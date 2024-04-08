ButtonCircle vayne;
ButtonCircle ashe;
ButtonCircle jhin;
ButtonCircle udregnDPS;
ButtonCircle deleteBuild;

ButtonCircle bork;
ButtonCircle bloodThirster;
ButtonCircle essenceReaver;
ButtonCircle guinsoosRageblade;
ButtonCircle immortalShieldbow;
ButtonCircle infinityEdge;
ButtonCircle krakenSlayer;
ButtonCircle lordDoms;
ButtonCircle mercurial;
ButtonCircle mortal;
ButtonCircle nashors;
ButtonCircle navori;
ButtonCircle dancers;
ButtonCircle fireCannon;
ButtonCircle runaans;
ButtonCircle shiv;
ButtonCircle stormrazor;
ButtonCircle terminus;
ButtonCircle collector;
ButtonCircle trinity;
ButtonCircle witsEnd;

ChampionBuild champion;

int champCounter;
int itemsCounter;
boolean stop = false;

boolean bork1 = false;
boolean bloodThirster1 = false;
boolean essenceReaver1 = false;
boolean guinsoosRageblade1 = false;
boolean immortalShieldbow1 = false;
boolean krakenSlayer1 = false;
boolean lordDoms1 = false;
boolean infinityEdge1 = false;
boolean mercurial1 = false;
boolean mortal1 = false;
boolean nashors1 = false;
boolean navori1 = false;
boolean dancers1 = false;
boolean fireCannon1 = false;
boolean runaans1 = false;
boolean shiv1 = false;
boolean stormrazor1 = false;
boolean terminus1 = false;
boolean collector1 = false;
boolean trinity1 = false;
boolean witsEnd1 = false;


 Items buildet = new Items();


void setup() {
  size(1600, 800);
  background(255);



  vayne = new ButtonCircle(400, 100, 100, "VayneSquare.png");
  ashe = new ButtonCircle(1200, 100, 100, "AsheSquare.png");
  jhin = new ButtonCircle(width/2, 100, 100, "JhinSquare.png");
  udregnDPS = new ButtonCircle(100, 100, 100, "rødknap.png");
  deleteBuild = new ButtonCircle(1550, 750, 100, "blåknap.png");


  bork = new ButtonCircle(800, 550, 100, "BladeOfTheRuinedKing.png");
  bloodThirster = new ButtonCircle(350, 425, 100, "BloodThirster.png");
  essenceReaver = new ButtonCircle(950, 550, 100, "EssenseReaver.png");
  guinsoosRageblade = new ButtonCircle(500, 300, 100, "GuinsoosRageblade.png");
  immortalShieldbow = new ButtonCircle(650, 300, 100, "ImmortalShieldbow.png");
  infinityEdge = new ButtonCircle(800, 300, 100, "InfinityEdge.png");
  krakenSlayer = new ButtonCircle(950, 300, 100, "KrakenSlayer.png");
  lordDoms = new ButtonCircle(1100, 300, 100, "LordDominiksRegards.png");
  mercurial = new ButtonCircle(650, 550, 100, "MercurialScimitar.png");
  mortal = new ButtonCircle(350, 300, 100, "MortalReminder.png");
  nashors = new ButtonCircle(1100, 550, 100, "NashorsTooth.png");
  navori = new ButtonCircle(500, 550, 100, "NavoriQuickblades.png");
  dancers = new ButtonCircle(1250, 425, 100, "PhantomDancer.png");
  fireCannon = new ButtonCircle(1250,550, 100, "RapidFirecannon.png");
  runaans = new ButtonCircle(350, 550, 100, "RunaansHurricane.png");
  shiv = new ButtonCircle(500, 425, 100, "StattikShiv.png");
  stormrazor = new ButtonCircle(650, 425, 100, "Stormrazor.png");
  terminus = new ButtonCircle(800, 425, 100, "Terminus.png");
  collector = new ButtonCircle(950, 425, 100, "TheCollecter.png");
  trinity = new ButtonCircle(1100, 425, 100, "TrinityForce.png");
  witsEnd = new ButtonCircle(1250, 300, 100, "WitsEnd.png");

}



void draw() {

  
  vayne.tegnKnap();
  ashe.tegnKnap();
  jhin.tegnKnap();
  udregnDPS.tegnKnap();
  deleteBuild.tegnKnap();
  
  bork.tegnKnap();
  bloodThirster.tegnKnap();
  essenceReaver.tegnKnap();
  guinsoosRageblade.tegnKnap();
  immortalShieldbow.tegnKnap();
  infinityEdge.tegnKnap();
  krakenSlayer.tegnKnap();
  lordDoms.tegnKnap();
  mercurial.tegnKnap();
  mortal.tegnKnap();
  nashors.tegnKnap();
  navori.tegnKnap();
  dancers.tegnKnap();
  fireCannon.tegnKnap();
  runaans.tegnKnap();
  shiv.tegnKnap();
  stormrazor.tegnKnap();
  terminus.tegnKnap();
  collector.tegnKnap();
  trinity.tegnKnap();
  witsEnd.tegnKnap();
  
  if (itemsCounter == 6 && stop == false) {
    champion = buildet.build();
    stop = true;
    println("works");
    println("ad er " + champion.ad);
    println("ap er " + champion.ap);
    
    champion.totalAs = champion.baseAs + champion.baseAs * champion.as/100;
    
    println("attack speed er " + champion.totalAs);
    
    if (champion.crit >= 100){
     champion.crit = 100; 
     }
     
    println("crit er " + champion.crit);
  }
  
}

void mouseReleased() {
  if (vayne.overCircle() && champCounter == 0) {
    buildet.Vayne(1.027138, 99.95, 0, 0);
    champCounter += 1;
    println("Vayne er valgt");
  }
  if (ashe.overCircle() && champCounter == 0) {
    buildet.Ashe(1.0304938, 109.15, 0, 0);
    champCounter += 1;
    println("Ashe er valgt");
  }
  if (jhin.overCircle() && champCounter == 0) {
    buildet.Jhin(0.92, 132.88, 0, 0);
    champCounter += 1;
    println("Jhin er valgt");
  }

  if (bork.overCircle() && itemsCounter <= 5 && champCounter == 1 && bork1 == false) {
    buildet.BladeOfTheRuinedKing(40,0,25,0);
    itemsCounter += 1;
    bork1 = true;
    println(itemsCounter);
  }

  if (bloodThirster.overCircle() && itemsCounter <= 5 && champCounter == 1 && bloodThirster1 == false) {
    buildet.BloodThirster(50,0,0,20);
    itemsCounter += 1;
    bloodThirster1 = true;
    println(itemsCounter);
  }

  if (essenceReaver.overCircle() && itemsCounter <= 5 && champCounter == 1 && essenceReaver1 == false) {
    buildet.EssenceReaver(60,0,0,20);
    itemsCounter += 1;
    essenceReaver1 = true;
    println(itemsCounter);
  }

  if (guinsoosRageblade.overCircle() && itemsCounter <= 5 && champCounter == 1 && guinsoosRageblade1 == false) {
    buildet.GuinsoosRageblade(35,35,25,0);
    itemsCounter += 1;
    guinsoosRageblade1 = true;
    println(itemsCounter);
  }

  if (immortalShieldbow.overCircle() && itemsCounter <= 5 && champCounter == 1 && immortalShieldbow1 == false) {
    buildet.ImmortalShieldbow(50,0,0,20);
    itemsCounter += 1;
    immortalShieldbow1 = true;
    println(itemsCounter);
  }

  if (infinityEdge.overCircle() && itemsCounter <= 5 && champCounter == 1 && infinityEdge1 == false) {
    buildet.InfinityEdge(65,0,0,20);
    itemsCounter += 1;
    infinityEdge1 = true;
    println(itemsCounter);
  }



if (krakenSlayer.overCircle() && itemsCounter <= 5 && champCounter == 1 && krakenSlayer1 == false) {
    buildet.KrakenSlayer(40,0,35,20);
    itemsCounter += 1;
    krakenSlayer1 = true;
    println(itemsCounter);
  }

if (lordDoms.overCircle() && itemsCounter <= 5 && champCounter == 1 && lordDoms1 == false) {
    buildet.LordDominiksRegards(40,0,0,20);
    itemsCounter += 1;
    lordDoms1 = true;
    println(itemsCounter);
  }

if (mercurial.overCircle() && itemsCounter <= 5 && champCounter == 1 && mercurial1 == false) {
    buildet.MercurialScimitar(40,0,0,20);
    itemsCounter += 1;
    mercurial1 = true;
    println(itemsCounter);
  }

if (mortal.overCircle() && itemsCounter <= 5 && champCounter == 1 && mortal1 == false) {
    buildet.MortalReminder(40,0,0,20);
    itemsCounter += 1;
    mortal1 = true;
    println(itemsCounter);
  }
  
if (nashors.overCircle() && itemsCounter <= 5 && champCounter == 1 && nashors1 == false) {
    buildet.NashorsTooth(0,90,50,0);
    itemsCounter += 1;
    nashors1 = true;
    println(itemsCounter);
  }
  
if (navori.overCircle() && itemsCounter <= 5 && champCounter == 1 && navori1 == false) {
    buildet.NavoriQuickblades(60,0,0,20);
    itemsCounter += 1;
    navori1 = true;
    println(itemsCounter);
  }

if (dancers.overCircle() && itemsCounter <= 5 && champCounter == 1 && dancers1 == false) {
    buildet.PhantomDancer(20,0,30,20);
    itemsCounter += 1;
    dancers1 = true;
    println(itemsCounter);
  }

if (fireCannon.overCircle() && itemsCounter <= 5 && champCounter == 1 && fireCannon1 == false) {
    buildet.RapidFirecannon(30,0,20,20);
    itemsCounter += 1;
    fireCannon1 = true;
    println(itemsCounter);
  }

if (runaans.overCircle() && itemsCounter <= 5 && champCounter == 1 && runaans1 == false) {
    buildet.RunaansHurricane(40,0,0,20);
    itemsCounter += 1;
    runaans1 = true;
    println(itemsCounter);
  }

if (shiv.overCircle() && itemsCounter <= 5 && champCounter == 1 && shiv1 == false) {
    buildet.StatikkShiv(50,0,30,20);
    itemsCounter += 1;
    shiv1 = true;
    println(itemsCounter);
  }

if (stormrazor.overCircle() && itemsCounter <= 5 && champCounter == 1 && stormrazor1 == false) {
    buildet.Stormrazor(60,0,15,20);
    itemsCounter += 1;
    stormrazor1 = true;
    println(itemsCounter);
  }
  
if (terminus.overCircle() && itemsCounter <= 5 && champCounter == 1 && terminus1 == false) {
    buildet.Terminus(40,0,30,0);
    itemsCounter += 1;
    terminus1 = true;
    println(itemsCounter);
  }
  
if (collector.overCircle() && itemsCounter <= 5 && champCounter == 1 && collector1 == false) {
    buildet.TheCollector(55,0,0,20);
    itemsCounter += 1;
    collector1 = true;
    println(itemsCounter);
  }
  
if (trinity.overCircle() && itemsCounter <= 5 && champCounter == 1 && trinity1 == false) {
    buildet.TrinityForce(45,0,33,0);
    itemsCounter += 1;
    trinity1 = true;
    println(itemsCounter);
  }
  
if (witsEnd.overCircle() && itemsCounter <= 5 && champCounter == 1 && witsEnd1 == false) {
    buildet.WitsEnd(0,0,55,0);
    itemsCounter += 1;
    witsEnd1 = true;
    println(itemsCounter);
  }

  if (udregnDPS.overCircle()) {
  Calculate();
  }

  if (deleteBuild.overCircle()){
   champion.ad = 0;
   champion.ap = 0;
   champion.totalAs = 0;
   champion.crit = 0;
   champion.baseAs = 0;
   champion.as = 0;
   
   
   
   
   champCounter = 0;
   itemsCounter = 0;
   stop = false;
   
   bork1 = false;
   bloodThirster1 = false;
   essenceReaver1 = false;
   guinsoosRageblade1 = false;
   immortalShieldbow1 = false;
   krakenSlayer1 = false;
   lordDoms1 = false;
   infinityEdge1 = false;
   mercurial1 = false;
   mortal1 = false;
   nashors1 = false;
   navori1 = false;
   dancers1 = false;
   fireCannon1 = false;
   runaans1 = false;
   shiv1 = false;
   stormrazor1 = false;
   terminus1 = false;
   collector1 = false;
   trinity1 = false;
   witsEnd1 = false;
   
   
   
   println(champCounter);
   println(itemsCounter);
   println(champion.ad);
   println(champion.ap);
   println(champion.totalAs);
   println(champion.crit);
   println(champion.baseAs);
   println(champion.as);
   
  }
  
}
