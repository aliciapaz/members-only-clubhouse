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

  def list(posts)
    link_to posts.find(2).member_id, posts.last, class: "list-group-item"
    link_to posts.find(2).title, posts.last, class: "list-group-item"
  end
end