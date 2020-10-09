BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Categories"
(
	"CategoryID"   Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"CategoryName" NVarChar(255)                              NOT NULL,
	"Description"  NVarChar(255)                                  NULL,

	CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryID")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Categories"
(
	"CategoryName",
	"Description"
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Products"
(
	"ProductID"       Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"ProductName"     NVarChar(255)                              NOT NULL,
	"CategoryID"      Int                                            NULL,
	"QuantityPerUnit" NVarChar(255)                                  NULL,

	CONSTRAINT "PK_Products" PRIMARY KEY ("ProductID")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Products"
(
	"ProductName",
	"CategoryID",
	"QuantityPerUnit"
)
VALUES
('Prod 1',1,'q 1'),
('Prod 2',1,'q 2'),
('Prod 3',3,'q 3'),
('Prod 4',3,'q 4'),
('Prod 5',1,'q 5'),
('Prod 6',1,'q 6')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"lw_Category"."CategoryID", 
	"detail"."ProductID", 
	"detail"."ProductName", 
	"detail"."CategoryID", 
	"detail"."QuantityPerUnit"
FROM
	"Categories" "lw_Category"
		INNER JOIN "Products" "detail" ON "lw_Category"."CategoryID" = "detail"."CategoryID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."CategoryID", 
	"t1"."CategoryName", 
	"t1"."Description"
FROM
	"Categories" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Products"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Categories"

