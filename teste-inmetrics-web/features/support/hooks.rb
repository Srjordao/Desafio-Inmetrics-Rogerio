require 'report_builder'

Before do 


    @crud = CrudPage.new
    @fun = FunPage.new
    
end 

After do |scenario|
    time = Time.now.strftime('%Y_%m_%d_%H_%M_%S_')
    nome_cenario = time + scenario.name.gsub(/\s+/, "_").gsub("/","_")
    screenshot = "report/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    attach(screenshot,'image/png')
end

at_exit do  
    options = {
      json_path:    'report/rubocop.html.json',
      report_path:  'report/report',
      report_types: ['html'],
      report_title: 'My Test Results',
      include_images: true,
      voice_commands: true,
      color: 'deep-purple',
      additional_info: {'browser' => 'Chrome', 'environment' => 'Stage 5'}
    }
       
    ReportBuilder.build_report options
    
     
    
end