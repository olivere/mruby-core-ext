class Hash
  def stringify_keys
    self.dup.stringify_keys!
  end

  def stringify_keys!
    self.keys.each do |k|
      unless String === k
        self[k.to_s] = self.delete(k)
      end
    end
    self
  end
end
