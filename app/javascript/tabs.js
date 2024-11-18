document.addEventListener("DOMContentLoaded", () => {
    const tabs = document.querySelectorAll(".tab-btn");
    const contents = document.querySelectorAll(".tab-content");
  
    tabs.forEach(tab => {
      tab.addEventListener("click", () => {
        // すべてのタブから "active" クラスを削除
        tabs.forEach(t => t.classList.remove("active"));
        // すべてのコンテンツを非表示
        contents.forEach(content => content.classList.add("hidden"));
  
        // クリックされたタブをアクティブに設定
        tab.classList.add("active");
        // 対応するコンテンツを表示
        const targetId = tab.getAttribute("data-tab");
        const targetContent = document.getElementById(targetId);
        if (targetContent) {
          targetContent.classList.remove("hidden");
        }
      });
    });
  });