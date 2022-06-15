﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Contract_Distributor_Agent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Contract_Distributor_Agent"
(
	"Agent_Id"                      Integer       NOT NULL,
	"Distributor_Id"                Integer       NOT NULL,
	"Contract_Id"                   Integer       NOT NULL,
	"Distributor_Type_Code"         NVarChar(255)     NULL,
	"Distributor_Agent_Type_Prefix" NVarChar(255)     NULL,
	"Represents_Type_Prefix"        NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Agent_Id  -- Int32
SET     @Agent_Id = 1
DECLARE @Distributor_Id  -- Int32
SET     @Distributor_Id = 1
DECLARE @Contract_Id  -- Int32
SET     @Contract_Id = 198827882
DECLARE @Distributor_Type_Code NVarChar(2) -- String
SET     @Distributor_Type_Code = 'CC'
DECLARE @Distributor_Agent_Type_Prefix NVarChar(6) -- String
SET     @Distributor_Agent_Type_Prefix = 'OFFICE'
DECLARE @Represents_Type_Prefix NVarChar(10) -- String
SET     @Represents_Type_Prefix = 'REPRESENTS'

INSERT INTO "Contract_Distributor_Agent"
(
	"Agent_Id",
	"Distributor_Id",
	"Contract_Id",
	"Distributor_Type_Code",
	"Distributor_Agent_Type_Prefix",
	"Represents_Type_Prefix"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Agent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Agent"
(
	"Agent_Id"   Integer       NOT NULL,
	"First_Name" NVarChar(255)     NULL,
	"Last_Name"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Agent_Id  -- Int32
SET     @Agent_Id = 1
DECLARE @First_Name NVarChar(1) -- String
SET     @First_Name = 'x'
DECLARE @Last_Name NVarChar(1) -- String
SET     @Last_Name = 'x'

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Distributor"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Distributor"
(
	"Distributor_Id"   Integer       NOT NULL,
	"Type_Code"        NVarChar(255)     NULL,
	"Distributor_Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Distributor_Id  -- Int32
SET     @Distributor_Id = 1
DECLARE @Type_Code NVarChar(2) -- String
SET     @Type_Code = 'RE'
DECLARE @Distributor_Name NVarChar(1) -- String
SET     @Distributor_Name = 'x'

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Distributor_Commercial_Propert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Distributor_Commercial_Propert"
(
	"Distributor_Id"         Integer       NOT NULL,
	"Commercial_Property_Id" Integer       NOT NULL,
	"Distributor_Type_Code"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Distributor_Id  -- Int32
SET     @Distributor_Id = 1
DECLARE @Commercial_Property_Id  -- Int32
SET     @Commercial_Property_Id = 1
DECLARE @Distributor_Type_Code NVarChar(2) -- String
SET     @Distributor_Type_Code = 'RE'

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Commercial_Property"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Commercial_Property"
(
	"Commercial_Property_Id" Integer       NOT NULL,
	"Street_Number"          NVarChar(100)     NULL,
	"Street_Name"            NVarChar(100)     NULL,
	"State"                  NVarChar(100)     NULL,
	"Zip_Code"               NVarChar(100)     NULL,
	"Zip_Plus_4"             NVarChar(100)     NULL,
	"City_Code"              NVarChar(100)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Commercial_Property_Id  -- Int32
SET     @Commercial_Property_Id = 1
DECLARE @Street_Number NVarChar(1) -- String
SET     @Street_Number = 'x'
DECLARE @Street_Name NVarChar(1) -- String
SET     @Street_Name = 'x'
DECLARE @State_1 NVarChar(1) -- String
SET     @State_1 = 'x'
DECLARE @Zip_Code NVarChar(1) -- String
SET     @Zip_Code = 'x'
DECLARE @Zip_Plus_4 NVarChar(1) -- String
SET     @Zip_Plus_4 = 'x'
DECLARE @City_Code NVarChar(1) -- String
SET     @City_Code = 'x'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Contract_Dates"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Contract_Dates"
(
	"Contract_Id"    Integer       NOT NULL,
	"Type_Code"      NVarChar(255)     NULL,
	"Effective_Date" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Contract_Id  -- Int32
SET     @Contract_Id = 198827882
DECLARE @Type_Code NVarChar(6) -- String
SET     @Type_Code = 'ESTCOE'
DECLARE @Effective_Date NVarChar(1) -- String
SET     @Effective_Date = 'x'

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Cities"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Cities"
(
	"City_Code" NVarChar(255)     NULL,
	"City_Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @City_Code NVarChar(1) -- String
SET     @City_Code = 'x'
DECLARE @City_Name NVarChar(8) -- String
SET     @City_Name = 'Urupinsk'

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"key_data_result"."City_Code",
	"key_data_result"."Agent_Id",
	"key_data_result"."Distributor_Id",
	"key_data_result"."Contract_Id",
	"key_data_result"."Distributor_Type_Code",
	"key_data_result"."Distributor_Agent_Type_Prefix",
	"key_data_result"."Represents_Type_Prefix",
	"key_data_result"."Agent_Id_1",
	"key_data_result"."First_Name",
	"key_data_result"."Distributor_Id_1",
	"key_data_result"."Type_Code",
	"key_data_result"."Distributor_Name",
	"key_data_result"."Distributor_Id_2",
	"key_data_result"."Commercial_Property_Id",
	"key_data_result"."Distributor_Type_Code_1",
	"key_data_result"."Commercial_Property_Id_1",
	"key_data_result"."Street_Number",
	"key_data_result"."Street_Name",
	"key_data_result"."Zip_Code",
	"key_data_result"."Zip_Plus_4",
	"key_data_result"."Contract_Id_1",
	"key_data_result"."Type_Code_1",
	"key_data_result"."Effective_Date",
	"detail"."City_Name"
FROM
	(
		SELECT DISTINCT
			"cp"."City_Code",
			"cda"."Agent_Id",
			"cda"."Distributor_Id",
			"cda"."Contract_Id",
			"cda"."Distributor_Type_Code",
			"cda"."Distributor_Agent_Type_Prefix",
			"cda"."Represents_Type_Prefix",
			"a"."Agent_Id" as "Agent_Id_1",
			"a"."First_Name",
			"d"."Distributor_Id" as "Distributor_Id_1",
			"d"."Type_Code",
			"d"."Distributor_Name",
			"dcp"."Distributor_Id" as "Distributor_Id_2",
			"dcp"."Commercial_Property_Id",
			"dcp"."Distributor_Type_Code" as "Distributor_Type_Code_1",
			"cp"."Commercial_Property_Id" as "Commercial_Property_Id_1",
			"cp"."Street_Number",
			"cp"."Street_Name",
			"cp"."Zip_Code",
			"cp"."Zip_Plus_4",
			"cd"."Contract_Id" as "Contract_Id_1",
			"cd"."Type_Code" as "Type_Code_1",
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
	) "key_data_result"
		INNER JOIN "Cities" "detail" ON ("detail"."City_Code" = "key_data_result"."City_Code" OR "detail"."City_Code" IS NULL AND "key_data_result"."City_Code" IS NULL)

BeforeExecute
RollbackTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a"."First_Name",
	"a"."Last_Name",
	"d"."Distributor_Name",
	"cp"."Street_Number",
	"cp"."Street_Name",
	"cp"."City_Code",
	"cda"."Agent_Id",
	"cda"."Distributor_Id",
	"cda"."Contract_Id",
	"cda"."Distributor_Type_Code",
	"cda"."Distributor_Agent_Type_Prefix",
	"cda"."Represents_Type_Prefix",
	"a"."Agent_Id",
	"d"."Distributor_Id",
	"d"."Type_Code",
	"dcp"."Distributor_Id",
	"dcp"."Commercial_Property_Id",
	"dcp"."Distributor_Type_Code",
	"cp"."Commercial_Property_Id",
	"cp"."State",
	"cp"."Zip_Code",
	"cp"."Zip_Plus_4",
	"cd"."Contract_Id",
	"cd"."Type_Code",
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
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Cities"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Contract_Dates"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Commercial_Property"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Distributor_Commercial_Propert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Distributor"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Agent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Contract_Distributor_Agent"

