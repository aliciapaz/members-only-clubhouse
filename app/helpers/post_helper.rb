module PostHelper
  def main_post_title(posts)
    posts.last.title unless posts.empty?
  end

  def main_post_author(posts)
    member_signed_in? ? "By #{Member.find(posts.last.member_id).name}" : 'By Anonymous member'
  end

  def main_post_body(posts)
    posts.last.body unless posts.empty?
  end

  def post_author(member)
    member_signed_in? ? "By #{member.name}" : 'By Anonymous member'
  end

  def post_list_last(posts)
    unless posts.empty?
      link_to posts.last.title, posts.last
    end
  end

  def post_list_snd_last(posts)
    if !posts.offset(2).limit(1).first.nil?
      link_to posts.offset(2).limit(1).first.title, posts.offset(2).limit(1).first
    end
  end

  def post_list_third_last(posts)
    if !posts.offset(3).limit(1).first.nil?
      link_to posts.offset(3).limit(1).first.title, posts.offset(3).limit(1).first
    end
  end

  def post_list_fourth_last(posts)
    if !posts.offset(4).limit(1).first.nil?
      link_to posts.offset(4).limit(1).first.title, posts.offset(4).limit(1).first
    end
  end

  def post_list_fifth_last(posts)
    if !posts.offset(5).limit(1).first.nil?
      link_to posts.offset(5).limit(1).first.title, posts.offset(5).limit(1).first
    end
  end

end
