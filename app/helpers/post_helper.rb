module PostHelper
  def main_post_title(posts)
    posts.last.title if !posts.empty?
  end

  def main_post_author(posts)
    member_signed_in? ? "By " + Member.find(posts.last.member_id).name : "By Anonymous member"
  end

  def main_post_body(posts)
    posts.last.body if !posts.empty?
  end

end