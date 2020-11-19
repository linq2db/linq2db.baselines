BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "User"
(
	"city"            NVarChar(255)     NULL,
	"user_name"       NVarChar(255)     NULL,
	"street"          NVarChar(255)     NULL,
	"building_number" Int           NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "User"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."city",
	"t1"."user_name",
	"t1"."street",
	"t1"."building_number"
FROM
	"User" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "User"

