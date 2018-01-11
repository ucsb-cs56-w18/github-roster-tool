module FeaturesHelper

  def self.feature_enabled?(feature)
    case feature
      when 'features.anacapa_repos'
        FeaturesHelper.anacapa_repos?
      else
        Setting["features.#{feature}"]
    end
  end

  def self.anacapa_repos?
    Setting['features.anacapa_repos']
  end
  
  def anacapa_repos?
    FeaturesHelper.anacapa_repos?
  end

  def self.cs56_projects?
    Setting['features.cs56_projects']
  end
  
  def cs56_projects?
    FeaturesHelper.cs56_projects?
  end

  
end
