# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `churn` gem.
# Please instead update this file by running `bin/tapioca gem churn`.


# source://churn//lib/churn/scm/source_control.rb#1
module Churn; end

# Analyzes Bzr / Bazaar SCM, to find recently changed files, and what lines have been altered
#
# source://churn//lib/churn/scm/bzr_analyzer.rb#4
class Churn::BzrAnalyzer < ::Churn::SourceControl
  # @raise RunTimeError Currently, the generate history option does not support Bazaar
  #
  # source://churn//lib/churn/scm/bzr_analyzer.rb#22
  def generate_history(starting_point); end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/bzr_analyzer.rb#12
  def get_logs; end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/bzr_analyzer.rb#17
  def get_revisions; end

  private

  # source://churn//lib/churn/scm/bzr_analyzer.rb#36
  def date_range; end

  # source://churn//lib/churn/scm/bzr_analyzer.rb#32
  def get_diff(revision, previous_revision); end

  # source://churn//lib/churn/scm/bzr_analyzer.rb#43
  def get_recent_file(line); end

  class << self
    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/bzr_analyzer.rb#28
    def cmd_success?; end

    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/bzr_analyzer.rb#7
    def supported?; end
  end
end

# The work horse of the the churn library.
# This class takes user input, determines the SCM the user is using.
# It then determines changes made during this revision.
# Finally it reads all the changes from previous revisions and displays human
# readable output on the command line.
# It can also output a yaml format readable by other tools such as metric_fu
# and Caliper.
#
# source://churn//lib/churn/calculator.rb#27
class Churn::ChurnCalculator
  # intialize the churn calculator object
  #
  # @return [ChurnCalculator] a new instance of ChurnCalculator
  #
  # source://churn//lib/churn/calculator.rb#30
  def initialize(options = T.unsafe(nil)); end

  # Analyze the source control data, filter, sort, and find more information
  # on the edited files
  #
  # source://churn//lib/churn/calculator.rb#77
  def analyze; end

  # Emits various data from source control to be analyzed later...
  # Currently this is broken up like this as a throwback to metric_fu
  #
  # source://churn//lib/churn/calculator.rb#70
  def emit; end

  # this method generates the past history of a churn project from first
  # commit to current running the report for oldest commits first so they
  # are built up correctly
  #
  # source://churn//lib/churn/calculator.rb#62
  def generate_history; end

  # prepares the data for the given project to be reported.
  # reads git/svn logs analyzes the output, generates a report and either
  # formats as a nice string or returns hash.
  # churn of the project
  #
  # @param print [Boolean] to return the data, true for string or false for hash
  # @return [Object] returns either a pretty string or a hash representing the
  #
  # source://churn//lib/churn/calculator.rb#49
  def report(print = T.unsafe(nil)); end

  # collect all the data into a single hash data structure.
  #
  # source://churn//lib/churn/calculator.rb#91
  def to_h; end

  # source://churn//lib/churn/calculator.rb#110
  def to_s; end

  private

  # source://churn//lib/churn/calculator.rb#210
  def calculate_changes!(changed_objs, total_changes); end

  # source://churn//lib/churn/calculator.rb#177
  def calculate_revision_changes; end

  # source://churn//lib/churn/calculator.rb#194
  def calculate_revision_data(revision); end

  # source://churn//lib/churn/calculator.rb#237
  def changes_for_type(changes, item_collection); end

  # source://churn//lib/churn/calculator.rb#148
  def filter_changes(changes); end

  # source://churn//lib/churn/calculator.rb#160
  def filters; end

  # source://churn//lib/churn/calculator.rb#219
  def get_changes(change); end

  # source://churn//lib/churn/calculator.rb#233
  def get_klass_for(method); end

  # source://churn//lib/churn/calculator.rb#250
  def parse_log_for_changes; end

  # source://churn//lib/churn/calculator.rb#260
  def parse_log_for_revision_changes; end

  # source://churn//lib/churn/calculator.rb#264
  def parse_logs_for_updated_files(revision, revisions); end

  # source://churn//lib/churn/calculator.rb#273
  def reject_ignored_files(files); end

  # source://churn//lib/churn/calculator.rb#269
  def reject_low_churn_files(files); end

  # source://churn//lib/churn/calculator.rb#144
  def sort_changes(changes); end

  class << self
    # source://churn//lib/churn/calculator.rb#139
    def collect_items(collection, match); end

    # source://churn//lib/churn/calculator.rb#164
    def display_array(title, array, options = T.unsafe(nil)); end

    # source://churn//lib/churn/calculator.rb#173
    def separator; end

    # Pretty print the data as a string for the user
    #
    # source://churn//lib/churn/calculator.rb#115
    def to_s(hash); end
  end
end

# responsible for storing the churn history to json,
# and for loading old churn history data from json.
#
# source://churn//lib/churn/history.rb#5
class Churn::ChurnHistory
  class << self
    # given a previous project revision find and load the churn data from a json file
    #
    # source://churn//lib/churn/history.rb#14
    def load_revision_data(revision, data_directory); end

    # takes current revision and its hash_data and stores it
    #
    # source://churn//lib/churn/history.rb#8
    def store_revision_history(revision, hash_data, data_directory); end
  end
end

# responsible for storing the churn configuration
#
# source://churn//lib/churn/options.rb#6
class Churn::ChurnOptions
  # @return [ChurnOptions] a new instance of ChurnOptions
  #
  # source://churn//lib/churn/options.rb#13
  def initialize; end

  # Returns the value of attribute data_directory.
  #
  # source://churn//lib/churn/options.rb#11
  def data_directory; end

  # Sets the attribute data_directory
  #
  # @param value the value to set the attribute data_directory to.
  #
  # source://churn//lib/churn/options.rb#11
  def data_directory=(_arg0); end

  # Returns the value of attribute file_extension.
  #
  # source://churn//lib/churn/options.rb#11
  def file_extension; end

  # Sets the attribute file_extension
  #
  # @param value the value to set the attribute file_extension to.
  #
  # source://churn//lib/churn/options.rb#11
  def file_extension=(_arg0); end

  # Returns the value of attribute file_prefix.
  #
  # source://churn//lib/churn/options.rb#11
  def file_prefix; end

  # Sets the attribute file_prefix
  #
  # @param value the value to set the attribute file_prefix to.
  #
  # source://churn//lib/churn/options.rb#11
  def file_prefix=(_arg0); end

  # Returns the value of attribute history.
  #
  # source://churn//lib/churn/options.rb#11
  def history; end

  # Sets the attribute history
  #
  # @param value the value to set the attribute history to.
  #
  # source://churn//lib/churn/options.rb#11
  def history=(_arg0); end

  # Returns the value of attribute ignores.
  #
  # source://churn//lib/churn/options.rb#11
  def ignores; end

  # Sets the attribute ignores
  #
  # @param value the value to set the attribute ignores to.
  #
  # source://churn//lib/churn/options.rb#11
  def ignores=(_arg0); end

  # Returns the value of attribute minimum_churn_count.
  #
  # source://churn//lib/churn/options.rb#11
  def minimum_churn_count; end

  # Sets the attribute minimum_churn_count
  #
  # @param value the value to set the attribute minimum_churn_count to.
  #
  # source://churn//lib/churn/options.rb#11
  def minimum_churn_count=(_arg0); end

  # Returns the value of attribute name.
  #
  # source://churn//lib/churn/options.rb#11
  def name; end

  # Sets the attribute name
  #
  # @param value the value to set the attribute name to.
  #
  # source://churn//lib/churn/options.rb#11
  def name=(_arg0); end

  # source://churn//lib/churn/options.rb#24
  def set_options(options = T.unsafe(nil)); end

  # Returns the value of attribute start_date.
  #
  # source://churn//lib/churn/options.rb#11
  def start_date; end

  # Sets the attribute start_date
  #
  # @param value the value to set the attribute start_date to.
  #
  # source://churn//lib/churn/options.rb#11
  def start_date=(_arg0); end
end

# source://churn//lib/churn/options.rb#7
Churn::ChurnOptions::DEFAULT_CHURN_DIRECTORY = T.let(T.unsafe(nil), String)

# source://churn//lib/churn/options.rb#8
Churn::ChurnOptions::DEFAULT_MINIMUM_CHURN_COUNT = T.let(T.unsafe(nil), Integer)

# source://churn//lib/churn/options.rb#9
Churn::ChurnOptions::DEFAULT_START_TIME = T.let(T.unsafe(nil), String)

# Analyzes git SCM to find recently changed files, and what lines have been altered
#
# source://churn//lib/churn/scm/git_analyzer.rb#4
class Churn::GitAnalyzer < ::Churn::SourceControl
  # source://churn//lib/churn/scm/git_analyzer.rb#21
  def generate_history(starting_point); end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/git_analyzer.rb#12
  def get_logs; end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/git_analyzer.rb#17
  def get_revisions; end

  private

  # source://churn//lib/churn/scm/git_analyzer.rb#45
  def date_range; end

  # source://churn//lib/churn/scm/git_analyzer.rb#37
  def get_commit_history; end

  # source://churn//lib/churn/scm/git_analyzer.rb#41
  def get_diff(revision, previous_revision); end

  class << self
    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/git_analyzer.rb#7
    def supported?; end
  end
end

# Analyzes Hg / Mercurial SCM to find recently changed files, and what lines have been altered
#
# source://churn//lib/churn/scm/hg_analyzer.rb#4
class Churn::HgAnalyzer < ::Churn::SourceControl
  # @raise RunTimeError Currently, the generate history option does not support Mercurial
  #
  # source://churn//lib/churn/scm/hg_analyzer.rb#22
  def generate_history(starting_point); end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/hg_analyzer.rb#12
  def get_logs; end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/hg_analyzer.rb#17
  def get_revisions; end

  private

  # source://churn//lib/churn/scm/hg_analyzer.rb#36
  def date_range; end

  # source://churn//lib/churn/scm/hg_analyzer.rb#32
  def get_diff(revision, previous_revision); end

  # source://churn//lib/churn/scm/hg_analyzer.rb#43
  def get_recent_file(line); end

  class << self
    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/hg_analyzer.rb#28
    def cmd_success?; end

    # @return [Array]
    #
    # source://churn//lib/churn/scm/hg_analyzer.rb#7
    def supported?; end
  end
end

# Given a ruby file, map the klass and methods to a range of line numbers
# The klass and method to line numbers mappings, are stored in
# klasses_collection and methods_collection
# this is based off https://github.com/seattlerb/ruby_parser which seems to have some known line number bugs
# perhaps look at and move more to the style of line numbers from metric_fu
# https://github.com/metricfu/metric_fu/blob/master/lib/data_structures/line_numbers.rb
# NOTE: showing more line number issues with Ruby 2.6
#
# source://churn//lib/churn/location_mapping.rb#10
class Churn::LocationMapping < ::SexpProcessor
  # @return [LocationMapping] a new instance of LocationMapping
  #
  # source://churn//lib/churn/location_mapping.rb#14
  def initialize; end

  # source://churn//lib/churn/location_mapping.rb#47
  def analyze_list(exp); end

  # source://churn//lib/churn/location_mapping.rb#41
  def deep_last_line(exp); end

  # source://churn//lib/churn/location_mapping.rb#23
  def get_info(file); end

  # Returns the value of attribute klasses_collection.
  #
  # source://churn//lib/churn/location_mapping.rb#12
  def klasses_collection; end

  # Returns the value of attribute methods_collection.
  #
  # source://churn//lib/churn/location_mapping.rb#12
  def methods_collection; end

  # source://churn//lib/churn/location_mapping.rb#28
  def process_class(exp); end

  # source://churn//lib/churn/location_mapping.rb#52
  def process_defn(exp); end
end

# Base class for analyzing various SCM systems like git, HG, and SVN
#
# source://churn//lib/churn/scm/source_control.rb#4
class Churn::SourceControl
  # @return [SourceControl] a new instance of SourceControl
  #
  # source://churn//lib/churn/scm/source_control.rb#21
  def initialize(start_date = T.unsafe(nil)); end

  # @raise [NotImplementedError]
  #
  # source://churn//lib/churn/scm/source_control.rb#33
  def generate_history(starting_point); end

  # @raise [NotImplementedError]
  #
  # source://churn//lib/churn/scm/source_control.rb#25
  def get_logs; end

  # @raise [NotImplementedError]
  #
  # source://churn//lib/churn/scm/source_control.rb#29
  def get_revisions; end

  # source://churn//lib/churn/scm/source_control.rb#37
  def get_updated_files_change_info(revision, revisions); end

  # source://churn//lib/churn/scm/source_control.rb#59
  def get_updated_files_from_log(revision, revisions); end

  private

  # source://churn//lib/churn/scm/source_control.rb#72
  def get_changed_range(line, matcher); end

  # source://churn//lib/churn/scm/source_control.rb#87
  def get_recent_file(line); end

  class << self
    # source://churn//lib/churn/scm/source_control.rb#6
    def set_source_control(start_date); end

    # @api public
    # @raise [NotImplementedError]
    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/source_control.rb#17
    def supported?; end
  end
end

# Analyzes SVN SCM to find recently changed files, and what lines have been altered
#
# source://churn//lib/churn/scm/svn_analyzer.rb#4
class Churn::SvnAnalyzer < ::Churn::SourceControl
  # @raise RunTimeError Currently, the generate history option does not support Subversion
  #
  # source://churn//lib/churn/scm/svn_analyzer.rb#17
  def generate_history(starting_point); end

  # @return [Array]
  #
  # source://churn//lib/churn/scm/svn_analyzer.rb#12
  def get_logs; end

  # This method is not supported by SVN
  #
  # @return [Array]
  #
  # source://churn//lib/churn/scm/svn_analyzer.rb#23
  def get_revisions; end

  # This method is not supported by SVN
  #
  # @return [Hash]
  #
  # source://churn//lib/churn/scm/svn_analyzer.rb#29
  def get_updated_files_change_info(revision, revisions); end

  private

  # source://churn//lib/churn/scm/svn_analyzer.rb#46
  def clean_up_svn_line(line); end

  # source://churn//lib/churn/scm/svn_analyzer.rb#39
  def date_range; end

  # source://churn//lib/churn/scm/svn_analyzer.rb#35
  def svn_credentials; end

  class << self
    # @return [Boolean]
    #
    # source://churn//lib/churn/scm/svn_analyzer.rb#7
    def supported?; end
  end
end