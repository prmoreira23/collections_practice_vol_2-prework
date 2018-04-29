# your code goes here
def begins_with_r(tools)
    tools.each do |tool|
        return false if !tool.downcase.start_with?('r')
    end
    return true
end
