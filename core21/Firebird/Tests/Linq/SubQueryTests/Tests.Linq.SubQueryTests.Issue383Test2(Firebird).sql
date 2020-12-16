BeforeExecute
-- Firebird

CREATE TABLE "Contract_Distributor_Agent"
(
	"Agent_Id"                      Int                                    NOT NULL,
	"Distributor_Id"                Int                                    NOT NULL,
	"Contract_Id"                   Int                                    NOT NULL,
	"Distributor_Type_Code"         VarChar(255) CHARACTER SET UNICODE_FSS,
	"Distributor_Agent_Type_Prefix" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Represents_Type_Prefix"        VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Contract_Distributor_Agent"
(
	"Agent_Id",
	"Distributor_Id",
	"Contract_Id",
	"Distributor_Type_Code",
	"Distributor_Agent_Type_Prefix",
	"Represents_Type_Prefix"
)
SELECT 1,1,198827882,'CC','OFFICE','REPRESENTS' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Agent"
(
	"Agent_Id"   Int                                    NOT NULL,
	"First_Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Last_Name"  VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
SELECT 1,'x','x' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Distributor"
(
	"Distributor_Id"   Int                                    NOT NULL,
	"Type_Code"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"Distributor_Name" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
SELECT 1,'RE','x' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Distributor_Commercial_Propert"
(
	"Distributor_Id"         Int                                    NOT NULL,
	"Commercial_Property_Id" Int                                    NOT NULL,
	"Distributor_Type_Code"  VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
SELECT 1,1,'RE' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Commercial_Property"
(
	"Commercial_Property_Id" Int                                    NOT NULL,
	"Street_Number"          VarChar(255) CHARACTER SET UNICODE_FSS,
	"Street_Name"            VarChar(255) CHARACTER SET UNICODE_FSS,
	"State"                  VarChar(255) CHARACTER SET UNICODE_FSS,
	"Zip_Code"               VarChar(255) CHARACTER SET UNICODE_FSS,
	"Zip_Plus_4"             VarChar(255) CHARACTER SET UNICODE_FSS,
	"City_Code"              VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Commercial_Property"
(
	"Commercial_Property_Id",
	"Street_Number",
	"Street_Name",
	"State",
	"Zip_Code",
	"Zip_Plus_4",
	"City_Code"
)
SELECT 1,'x','x','x','x','x','x' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Contract_Dates"
(
	"Contract_Id"    Int                                    NOT NULL,
	"Type_Code"      VarChar(255) CHARACTER SET UNICODE_FSS,
	"Effective_Date" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
SELECT 198827882,'ESTCOE','x' FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Cities"
(
	"City_Code" VarChar(255) CHARACTER SET UNICODE_FSS,
	"City_Name" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
SELECT 'x','Urupinsk' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"a"."First_Name",
	"a"."Last_Name",
	"d"."Distributor_Name",
	"cp"."Street_Number",
	"cp"."Street_Name",
	(
		SELECT
			"c_1"."City_Name"
		FROM
			"Cities" "c_1"
		WHERE
			("c_1"."City_Code" = "cp"."City_Code" OR "c_1"."City_Code" IS NULL AND "cp"."City_Code" IS NULL)
	),
	"cp"."State",
	"cp"."Zip_Code",
	"cp"."Zip_Plus_4",
	"cd"."Effective_Date"
FROM
	"Contract_Distributor_Agent" "cda"
		INNER JOIN "Agent" "a" ON "cda"."Agent_Id" = "a"."Agent_Id"
		INNER JOIN "Distributor" "d" ON "cda"."Distributor_Id" = "d"."Distributor_Id"
		INNER JOIN "Distributor_Commercial_Propert" "dcp" ON "d"."Distributor_Id" = "dcp"."Distributor_Id"
		INNER JOIN "Commercial_Property" "cp" ON "dcp"."Commercial_Property_Id" = "cp"."Commercial_Property_Id"
		INNER JOIN "Contract_Dates" "cd" ON "cda"."Contract_Id" = "cd"."Contract_Id"
WHERE
	"cda"."Contract_Id" = 198827882 AND
	"cda"."Distributor_Type_Code" = 'CC' AND
	"cda"."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
	"cda"."Represents_Type_Prefix" = 'REPRESENTS' AND
	"cd"."Type_Code" = 'ESTCOE' AND
	"d"."Type_Code" = 'RE' AND
	"dcp"."Distributor_Type_Code" = 'RE'

BeforeExecute
-- Firebird

DROP TABLE "Cities"

BeforeExecute
-- Firebird

DROP TABLE "Contract_Dates"

BeforeExecute
-- Firebird

DROP TABLE "Commercial_Property"

BeforeExecute
-- Firebird

DROP TABLE "Distributor_Commercial_Propert"

BeforeExecute
-- Firebird

DROP TABLE "Distributor"

BeforeExecute
-- Firebird

DROP TABLE "Agent"

BeforeExecute
-- Firebird

DROP TABLE "Contract_Distributor_Agent"

