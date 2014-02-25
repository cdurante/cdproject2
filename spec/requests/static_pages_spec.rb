require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "FAQ page" do
    before { visit faq_path }

    let(:heading)    { 'FAQ' }
    let(:page_title) { 'FAQ' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
  before { visit about_path }

    let(:heading)    { 'about' }
    let(:page_title) { 'about' }

    it_should_behave_like "all static pages"
  end

  describe "Blog page" do
    before { visit blog_path }

    let(:heading)    { 'blog' }
    let(:page_title) { 'blog' }

    it_should_behave_like "all static pages"
  end
end