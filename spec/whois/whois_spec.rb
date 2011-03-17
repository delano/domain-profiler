# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')
require 'domain-profiler/whois'

describe DomainProfiler::Whois do
  before (:all) do
    filename = File.expand_path(File.dirname(__FILE__) + '/fixtures/zombo.com.raw.dump')
    zombo_com_data = `cat #{filename}`
    filename = File.expand_path(File.dirname(__FILE__) + '/fixtures/furbo.org.raw.dump')
    furbo_org_data = `cat #{filename}`
    @zombo = DomainProfiler::Whois.new
    @zombo.parse(zombo_com_data)
    @furbo = DomainProfiler::Whois.new
    @furbo.parse(furbo_org_data)
  end

  it "knows the name of the registrar" do
    @zombo.registrar.should == ['NETWORK SOLUTIONS, LLC.']
    @furbo.registrar.should == ['GoDaddy.com, Inc.']
  end

  it "is able to deal with no data" do
    whois = DomainProfiler::Whois.new
    whois.registrar.should == ['Unknown']
  end

  it "is able to deal with nil input" do
    whois = DomainProfiler::Whois.new
    whois.parse(nil)
    whois.registrar.should == ['Unknown']
  end

  it "is able to deal with empty string input" do
    whois = DomainProfiler::Whois.new
    whois.parse('')
    whois.registrar.should == ['Unknown']
  end

  it "knows when the domain expires" do
    @zombo.expires.should == '10-oct-2010'
  end

  it "knows when the domain was created" do
    @zombo.created.should == '10-oct-1999'
  end

  it "knows when the domain was updated" do
    @zombo.updated.should == '19-sep-2006'
  end

  it "knows when the domain status" do
    @zombo.status.should == 'clientTransferProhibited'
  end

end
