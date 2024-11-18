document.addEventListener("DOMContentLoaded", () => {
    console.log("JavaScript Loaded!"); // 確認用ログ
  
    const bioText = document.getElementById("bio-text");
    const showMoreBtn = document.getElementById("show-more-btn");
  
    if (!bioText || !showMoreBtn) {
      console.error("Elements not found: bio-text or show-more-btn");
      return;
    }
  
    console.log("Elements found:", bioText, showMoreBtn);
  
    showMoreBtn.addEventListener("click", () => {
      bioText.classList.toggle("expanded");
  
      if (bioText.classList.contains("expanded")) {
        console.log("Expanding text...");
        showMoreBtn.textContent = "閉じる";
      } else {
        console.log("Collapsing text...");
        showMoreBtn.textContent = "続きを見る";
      }
    });
  });