document.addEventListener("keyup",function (e){var key=e.key+e.location;
if(key=="Shift2")if(main.style.visibility=="hidden"){main.style.visibility="visible";console.style.visibility="visible"}else{main.style.visibility="hidden";console.style.visibility="hidden"}});
var title=document.createElement("div");
var items=document.createElement("center"),tab=document.createElement("button");
tab.className="vaportab",tab.innerText="X-ray Goggles",tab.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';xray()"),items.appendChild(tab);
var inspect=document.createElement("button");
inspect.className="vaportab",inspect.innerText="Edit",inspect.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';edit()"),items.appendChild(inspect);
var canvascloak=document.createElement("button");
canvascloak.className="vaportab",canvascloak.innerText="Iframe Injector",canvascloak.setAttribute("onclick",'Nightmare({"title": "Iframe Injector","type": "js","js": "https://all-b.cf/inj.js","width": 700,"height": 500,"theme": "dark"})'),items.appendChild(canvascloak);var pro=document.createElement("button");
pro.className="vaportab",pro.innerText="Favicon",pro.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';Fav()"),items.appendChild(pro);
var games=document.createElement("button");
games.className="vaportab",games.innerText="Replace",games.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';replace()"),items.appendChild(games);
var breaker=document.createElement("br");items.appendChild(breaker);
var cl=document.createElement("button");
cl.className="vaportab",cl.innerText="Bookmarks",cl.setAttribute("onclick",'new Nightmare({"title": "Bookmarks","type": "js","js": "https://all-b.cf/bookmark.js","width": 400,"height": 300,"theme": "dark"})'),items.appendChild(cl);
var ram=document.createElement("button");
ram.className="vaportab",ram.innerText="About:Blank",ram.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';ab()"),items.appendChild(ram);
var nuke=document.createElement("button");
nuke.className="vaportab",nuke.innerText="Kill Reload",nuke.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';kr()"),items.appendChild(nuke);
var ab=document.createElement("button");ab.className="vaportab",ab.innerText="HTML stealer",ab.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';hs()"),items.appendChild(ab);
var cie=document.createElement("button");
cie.className="vaportab",cie.innerText="History Flooder",cie.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';hf()"),items.appendChild(cie),appid.appendChild(items);
var ad=document.createElement("button");
ad.className="vaportab",ad.innerText="Ad Blocker",ad.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';ad()"),items.appendChild(ad);
var ha=document.createElement("button");
ha.className="vaportab",ha.innerText="Hacked",ha.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';ha1()"),items.appendChild(ha);
var had=document.createElement("button");
had.className="vaportab",had.innerText="Hacked Download",had.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';ha2()"),items.appendChild(had);
var d=document.createElement("button");
d.className="vaportab",d.innerText="Dev Tools",d.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';d()"),items.appendChild(d);
var p=document.createElement("button");
p.className="vaportab",p.innerText="Password Lockdown",p.setAttribute("onclick","document.body.appendChild(document.createElement('script')).src='https://all-b.cf/s.js';p()"),items.appendChild(p);
var vaporstyle=document.createElement("style");
vaporstyle.innerText=".vaportitle {font-size: 60px; text-align: center; color: white; user-select: none; margin-top: 10px;}.vaportab{cursor: pointer;background: #303134;border-radius: 2.5px;height: 50px;text-align: center;line-height: 50px;color: white; border: none; font-size: 18px;user-select: none; margin: 5px;} .vaportab:hover {background: darkslategrey;}",document.getElementsByTagName("html")[0].appendChild(vaporstyle);
