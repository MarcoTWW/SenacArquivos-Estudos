import { Component } from '@angular/core';

@Component({
  selector: 'app-rooter',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  public nome: string = 'Marco';

  exibirAlerta() {
    alert("Alerta de Teste");
  }
}
