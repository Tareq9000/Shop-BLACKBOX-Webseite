create database shop;
use shop;

SET GLOBAL time_zone="+1:00";

create table sneakers (id int not null, brand varchar(64),name varchar(64), price decimal(8,2), bild varchar(64));
insert into sneakers values(1, "ADIDAS","TERREX FREE HIKER W",229.90, " .jpg");
insert into sneakers values(2, "ADIDAS", "ADILETTE", 79.90, "2ADILETTELUXEW.jpg");
insert into sneakers values(3, "ADIDAS","PHARELL WILLIAMS X ADIDAS",99.90, "3PHARRELWILLIAMSXADIDAS.jpg");
insert into sneakers values(4, "ADIDAS", "POWERPHASE OG", 119.90, "4POWERPHASEOG.jpg");
insert into sneakers values(5, "ADIDAS","YEEZY BOOST 350 V2",200.00, "5YEZZYBOOST350V2.jpg");
insert into sneakers values(6, "ADIDAS", "A.R TRAINER W", 119.90, "6A.RTRAINERW.jpg");
insert into sneakers values(7, "ADIDAS","ZX 4000",119.90, "7ZX4000.jpg");
insert into sneakers values(8, "ADIDAS", "SAMBA OG", 109.90, "8SAMBAOG.jpg");
insert into sneakers values(9, "ADIDAS","YEEZY BOOST 700",349.90, "9YEZZYBOOST700.jpg");
insert into sneakers values(10, "ADIDAS", "YUNG-1", 89.90, "10YUNG.1.jpg");
insert into sneakers values(11, "ADIDAS","YUNG-1",89.90, "11LXCON.jpg");
insert into sneakers values(12, "ADIDAS", "NAKED X ADIDAS", 169.90, "12NAKEDXADIDAS.jpg");

insert into sneakers values(13, "JORDAN","AIR JORDAN 1 MID",139.90, "1AJ1MID.jpg");
insert into sneakers values(14, "JORDAN", "AIR JORDAN 1 MID",139.90, "2AJ1MID2.jpg");
insert into sneakers values(15, "JORDAN","AIR JORDAN 1 MID",139.90, "3AJ1MID.jpg");
insert into sneakers values(16, "JORDAN", "AIR JORDAN 1 MID(GS)", 99.90, "4AJ1MIDGS.jpg");
insert into sneakers values(17, "JORDAN","WMNS AIR JORDAN 1 MID",159.90, "5WMNSAIRJ1MID.jpg");
insert into sneakers values(18, "JORDAN", "AIR JORDAN 1 RETRO HIGH", 119.90, "6AJ1RETROHIGH.jpg");
insert into sneakers values(19, "JORDAN","AIR JORDAN 1 MID",139.90, "7AJ1MID.jpg");
insert into sneakers values(20, "JORDAN", "AIR JORDAN 6 RETRO", 139.90, "8AJ6RETRO.jpg");
insert into sneakers values(21, "JORDAN","AIR JORDAN 1 RETRO HI",89.90, "9AJ1FLYKNIT.jpg");
insert into sneakers values(22, "JORDAN", "AIR JORDAN 1 MID",99.90, "10AJ1MIDGS2.jpg");
insert into sneakers values(23, "JORDAN","AIR JORDAN 1 MID SE",159.90, "11AJ1MIDSE.jpg");
insert into sneakers values(24, "JORDAN", "JORDAN WHY NOT ZERO.2",169.90, "12JORDANWHYNOT.jpg");

insert into sneakers values(25, "NIKE","AIR MAX 97 LX",239.90, "1AIRMAX97LX.jpg");
insert into sneakers values(26, "NIKE", "AIR MAX DELUXE",229.90, "2AIRMAXDELUXE.jpg");
insert into sneakers values(27, "NIKE","WMNS AIR 97 RF",239.90, "3AIRMAX97RF.jpg");
insert into sneakers values(28, "NIKE", "AIR MAX SEQUENT 4 SHIELD",149.90, "4AIRMAXSEQUENT.jpg");
insert into sneakers values(29, "NIKE","AIR MAX 270",199.90, "5AIRMAX270.jpg");
insert into sneakers values(30, "NIKE", "WMNS AIR MAX 270", 119.90, "6AIRMAX270GS.jpg");
insert into sneakers values(31, "NIKE","AIR MAX 270(GS)",159.90, "7WMNSAIRVAPORMAX.jpg");
insert into sneakers values(32, "NIKE", "WMNS AIR VAPORMAX FLY",269, "8AIRMAX95PREMIUM.jpg");
insert into sneakers values(33, "NIKE","AIR MAX 95 PREMIUM",229.90, "9WMNSAIRMAX720.jpg");
insert into sneakers values(34, "NIKE", "AIR MAX 270",239.90, "10WMNAIRMAX270.jpg");
insert into sneakers values(35, "NIKE","WMNS AIR MAX 720",239.90, "11AIRFORCE1.jpg");
insert into sneakers values(36, "NIKE", "AIR FORCE 1'07 PREMIUM",159.90, "12AF1PREMIUM.jpg");

create table clothes (id int not null, name varchar(64), price decimal(8,2), bild varchar(64));
insert into sneakers values(37,"NIKE","COLOR BLOCKED QUARTER 1",179.90, "1COLORBLOCKED.jpg");
insert into sneakers values(38,"NIKE","DRAWSTRING SHORTS",179.90, "2HBRJACKET.jpg");
insert into sneakers values(39,"NIKE","COLOR BLOCKED SWEATPANS",299.90, "3ASWGFXJACKET.jpg");
insert into sneakers values(40,"NIKE","STRIPED RUGBY",289.90, "4SRTLGCAJ6.jpg");
insert into sneakers values(41,"NIKE","LOGO TEE",89.90, "ACGPRIMALOFT.jpg");
insert into sneakers values(42,"ADIDAS", "STRIPED RUGBY", 289.90, "6NYLONSAILINGJACKET.jpg");
insert into sneakers values(43,"ADIDAS","LOGO TEE",89.90, "7CANVASWORKJACKET.jpg");
insert into sneakers values(44,"ADIDAS","STRIPED RUGBY",259.90, "8HEWRJACKET.jpg");
insert into sneakers values(45,"ADIDAS","COLOR BLOCKED QUARTER 1",289.90, "9WINDELLPARK.jpg");
insert into sneakers values(46,"ADIDAS","COLOR BLOCKED QUARTER 2",289.90, "10ATHLETICS.jpg");
insert into sneakers values(47, "JORDAN","COLOR BLOCKED SWEATPANS",209.90, "11CHALLENGER.jpg");
insert into sneakers values(48, "JORDAN","HE WR JACKET HD",99.90, "12ACEGORETEX.jpg");


