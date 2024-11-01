import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["warrantyExp"];

    addNinetyDays() {
        const currentDate = new Date(this.warrantyExpTarget.value);
        currentDate.setDate(currentDate.getDate() + 90);
        this.warrantyExpTarget.value = currentDate.toISOString().split('T')[0];
    }
    add365Days() {
        const currentDate = new Date(this.warrantyExpTarget.value);
        currentDate.setDate(currentDate.getDate() + 365);
        this.warrantyExpTarget.value = currentDate.toISOString().split('T')[0];
    }
    add1095Days() {
        const currentDate = new Date(this.warrantyExpTarget.value);
        currentDate.setDate(currentDate.getDate() + 1095);
        this.warrantyExpTarget.value = currentDate.toISOString().split('T')[0];
    }
}