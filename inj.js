document.addEventListener("keyup",function (e){var key=e.key+e.location;if(key=="Shift2")if(main.style.visibility=="hidden"){main.style.visibility="visible";console.style.visibility="visible"}else{main.style.visibility="hidden";console.style.visibility="hidden"}})
var vbuttons=document.createElement("center"),vtab=document.createElement("input")
vtab.id="proxlink",vtab.placeholder="Website link",vbuttons.appendChild(vtab)
var vbutton1=document.createElement("button")
vbutton1.className="ab"
vbutton1.setAttribute("onclick",'new Nightmare({"title":"Iframe","type": "url","url": document.getElementById("proxlink").value,"width": 800,"height": 600,"theme":"dark"})'),vbutton1.innerText="Inject"
vbuttons.appendChild(vbutton1);appid.appendChild(vbuttons)
var vaporstyle=document.createElement("style")
vaporstyle.innerText=".ab{cursor:pointer;background:#303134;border-radius:2.5px;height: 50px;text-align:center;line-height:50px;color:white;border: none;font-size:18px;user-select:none;margin:5px}#proxlink {background:#303134;border-radius:2.5px;height:50px;line-height: 50px;color:white;border:none;font-size:18px;user-select:none;margin:5px;padding-left:5px;outline:none}",document.getElementsByTagName("html")[0].appendChild(vaporstyle)
