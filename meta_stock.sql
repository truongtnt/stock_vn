--"TRADE_DATE","SEC_CD","CLOSE_PRICE","MAT_QTY","HIGHEST_PRICE","LOWEST_PRICE"
CREATE TABLE "meta_stock" (
	"trade_date"	INTEGER NOT NULL,
	"sec_cd"	TEXT NOT NULL,
	"close"	NUMERIC,
	"mat_qty"	NUMERIC,
	"highest"	NUMERIC,
	"lowest"	NUMERIC,
	PRIMARY KEY("trade_date","sec_cd")
)

CREATE TABLE "hsx" (
	"trade_date"	INTEGER NOT NULL,
	"sec_cd"	TEXT NOT NULL,
	"close"	NUMERIC,
	"mat_qty"	NUMERIC,
	"highest"	NUMERIC,
	"lowest"	NUMERIC,
	PRIMARY KEY("trade_date","sec_cd")
)

CREATE TABLE "hnx" (
	"trade_date"	INTEGER NOT NULL,
	"sec_cd"	TEXT NOT NULL,
	"close"	NUMERIC,
	"mat_qty"	NUMERIC,
	"highest"	NUMERIC,
	"lowest"	NUMERIC,
	PRIMARY KEY("trade_date","sec_cd")
)

CREATE TABLE "upcom" (
	"trade_date"	INTEGER NOT NULL,
	"sec_cd"	TEXT NOT NULL,
	"close"	NUMERIC,
	"mat_qty"	NUMERIC,
	"highest"	NUMERIC,
	"lowest"	NUMERIC,
	PRIMARY KEY("trade_date","sec_cd")
)