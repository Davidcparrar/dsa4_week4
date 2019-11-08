create database strategy;
create table trades ("Number" int not null, "Trade type" varchar(5), "Entry time" varchar(20), "Exposure" varchar(40),
  "Entry balance" float, "Exit balance" float, "Profit" float, "Pnl (incl fees)" float, "Exchange" varchar(10),
  "Margin" int, "BTC Price" float);
psql -h week-4-case.cgadet6cjhqw.us-east-1.rds.amazonaws.com -U user_dash -d strategy -c "\copy trades from 'aggr.csv' with (format csv, header true, delimiter ',');"
