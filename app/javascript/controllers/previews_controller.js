import { Controller } from "@hotwired/stimulus";

// Conecta-se a data-controller="previews"
export default class extends Controller {
  static targets = ["input", "preview"];

  connect() {
    console.log("Hello World", this.element);
  }

  preview() {
    let input = this.inputTarget;
    let preview = this.previewTarget;
    let file = input.files[0];
    let reader = new FileReader();

    reader.onloadend = () => {
      preview.src = reader.result;
    };

    if (file) {
      reader.readAsDataURL(file);
    } else {
      preview.src = "";
    }
  }
}
