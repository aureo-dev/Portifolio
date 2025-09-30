const btn = document.querySelector(".tema");
const body = document.body;

btn.addEventListener("click", () => {
  body.classList.toggle("dark");
});

const sections = document.querySelectorAll("main, article");
const navLinks = document.querySelectorAll("nav ul li a");

const options = {
  threshold: 0.6,
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      const id = entry.target.getAttribute("id");

      navLinks.forEach((link) => {
        link.classList.remove("ativo");
        if (link.getAttribute("href") === "#" + id) {
          link.classList.add("ativo");
        }
      });
    }
  });
}, options);

sections.forEach((section) => {
  if (section.id) observer.observe(section);
});


function mascara_numero() {
  var tel_formatado = document.getElementById("numero").value;
  if (tel_formatado[0] != "(") {
    if (tel_formatado[0] != undefined) {
      document.getElementById("numero").value = "(" + tel_formatado[0];
    }
  }

  if (tel_formatado[3] != ")") {
    if (tel_formatado[3] != undefined) {
      document.getElementById("numero").value =
        tel_formatado.slice(0, 3) + ")" + tel_formatado[3];
    }
  }

  if (tel_formatado[9] != "-") {
    if (tel_formatado[9] != undefined) {
      document.getElementById("numero").value =
        tel_formatado.slice(0, 9) + "-" + tel_formatado[9];
    }
  }
}

const btnEnviar = document.querySelector("button[type='submit']");
const modalContato = document.getElementById("modalContato");
const fecharModal = modalContato.querySelector(".fechar");

btnEnviar.addEventListener("click", (e) => {
  e.preventDefault();
  modalContato.style.display = "block";
});

fecharModal.addEventListener("click", () => {
  modalContato.style.display = "none";
});

window.addEventListener("click", (e) => {
  if (e.target === modalContato) {
    modalContato.style.display = "none";
  }
});
