import { Controller } from "stimulus"
import Rails from "@rails/ujs"
export default class extends Controller {
  
  static targets = ["likebtn", "like_count"]
  //// 喜歡功能
  like_or_not(){
    const post_id = this.likebtnTarget.dataset.id
    const submitData = {post_id: post_id}
    const like_count = this.like_countTarget.children[0].innerHTML
    Rails.ajax({
      url: `likes/like`, 
      type: 'POST', 
      dataType: 'json',
      beforeSend(xhr, options) {
        xhr.setRequestHeader('Content-Type', 'application/json; charset=UTF-8')
        options.data = JSON.stringify(submitData)
        return true
      },
      success: resp => {
      }, 
      error: err => {
      } 
    })  
    // 喜歡與否對應的愛心顏色
    if(Object.values(this.likebtnTarget.classList).includes("active")){
      this.likebtnTarget.classList.remove("active")
      like_count = 1
    }else{
      this.likebtnTarget.classList.add("active")
      like_count = 1
    }
    
    console.log()
  }
}