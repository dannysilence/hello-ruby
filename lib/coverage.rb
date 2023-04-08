# lib/coverage.rb
require 'simplecov'

# if ENV["COVERAGE"]
    
    # #                                #
    # # TODO: Minimum coverage #
    # #                                #
    
    # SimpleCov.minimum_coverage 90
    # # same as above (the default is to check line coverage)
    # SimpleCov.minimum_coverage line: 90
    # # check for a minimum line coverage of 90% and minimum 80% branch coverage
    # SimpleCov.minimum_coverage line: 90, branch: 80
    
    
    
    
    # #                                #
    # # TODO: Minimum coverage by file # 
    # #                                #
    
    # SimpleCov.minimum_coverage_by_file 80
    # # same as above (the default is to check line coverage by file)
    # SimpleCov.minimum_coverage_by_file line: 80
    # # check for a minimum line coverage by file of 90% and minimum 80% branch coverage
    # SimpleCov.minimum_coverage_by_file line: 90, branch: 88
    
    
    
    
    # #                                #
    # # TODO: Maximum coverage drop    #
    # #                                #
    
    # SimpleCov.maximum_coverage_drop 5
    # # same as above (the default is to check line drop)
    # SimpleCov.maximum_coverage_drop line: 5
    # # check for a maximum line drop of 5% and maximum 10% branch drop
    # SimpleCov.maximum_coverage_drop line: 5, branch: 10
    
    
    
    # #                                #
    # # Refuse dropping coverage       #
    # #                                #
    
    # SimpleCov.refuse_coverage_drop
    # # same as above (the default is to only refuse line drop)
    # SimpleCov.refuse_coverage_drop :line
    # # refuse drop for line and branch
    # SimpleCov.refuse_coverage_drop :line, :branch
    
    
    SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([ SimpleCov::Formatter::HTMLFormatter ])
    SimpleCov.start
    
    puts 'simplecov enabled'
# else 
#     puts 'simplecov NOT enabled'
# end