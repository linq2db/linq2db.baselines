BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Contract_Distributor_Agent"
(
	"Agent_Id"                      Int  NOT NULL,
	"Distributor_Id"                Int  NOT NULL,
	"Contract_Id"                   Int  NOT NULL,
	"Distributor_Type_Code"         text     NULL,
	"Distributor_Agent_Type_Prefix" text     NULL,
	"Represents_Type_Prefix"        text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
(1,1,198827882,'CC','OFFICE','REPRESENTS')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Agent"
(
	"Agent_Id"   Int  NOT NULL,
	"First_Name" text     NULL,
	"Last_Name"  text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
VALUES
(1,'x','x')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Distributor"
(
	"Distributor_Id"   Int  NOT NULL,
	"Type_Code"        text     NULL,
	"Distributor_Name" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
VALUES
(1,'RE','x')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Distributor_Commercial_Propert"
(
	"Distributor_Id"         Int  NOT NULL,
	"Commercial_Property_Id" Int  NOT NULL,
	"Distributor_Type_Code"  text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
VALUES
(1,1,'RE')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Commercial_Property"
(
	"Commercial_Property_Id" Int  NOT NULL,
	"Street_Number"          text     NULL,
	"Street_Name"            text     NULL,
	"State"                  text     NULL,
	"Zip_Code"               text     NULL,
	"Zip_Plus_4"             text     NULL,
	"City_Code"              text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
(1,'x','x','x','x','x','x')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Contract_Dates"
(
	"Contract_Id"    Int  NOT NULL,
	"Type_Code"      text     NULL,
	"Effective_Date" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
VALUES
(198827882,'ESTCOE','x')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Cities"
(
	"City_Code" text     NULL,
	"City_Name" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
VALUES
('x','Urupinsk')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."City_Code",
	key_data_result."Agent_Id",
	key_data_result."Distributor_Id",
	key_data_result."Contract_Id",
	key_data_result."Distributor_Type_Code",
	key_data_result."Distributor_Agent_Type_Prefix",
	key_data_result."Represents_Type_Prefix",
	key_data_result."Agent_Id_1",
	key_data_result."First_Name",
	key_data_result."Distributor_Id_1",
	key_data_result."Type_Code",
	key_data_result."Distributor_Name",
	key_data_result."Distributor_Id_2",
	key_data_result."Commercial_Property_Id",
	key_data_result."Distributor_Type_Code_1",
	key_data_result."Commercial_Property_Id_1",
	key_data_result."Street_Number",
	key_data_result."Street_Name",
	key_data_result."Zip_Code",
	key_data_result."Zip_Plus_4",
	key_data_result."Contract_Id_1",
	key_data_result."Type_Code_1",
	key_data_result."Effective_Date",
	detail."City_Name"
FROM
	(
		SELECT DISTINCT
			cp."City_Code",
			cda."Agent_Id",
			cda."Distributor_Id",
			cda."Contract_Id",
			cda."Distributor_Type_Code",
			cda."Distributor_Agent_Type_Prefix",
			cda."Represents_Type_Prefix",
			a."Agent_Id" as "Agent_Id_1",
			a."First_Name",
			d."Distributor_Id" as "Distributor_Id_1",
			d."Type_Code",
			d."Distributor_Name",
			dcp."Distributor_Id" as "Distributor_Id_2",
			dcp."Commercial_Property_Id",
			dcp."Distributor_Type_Code" as "Distributor_Type_Code_1",
			cp."Commercial_Property_Id" as "Commercial_Property_Id_1",
			cp."Street_Number",
			cp."Street_Name",
			cp."Zip_Code",
			cp."Zip_Plus_4",
			cd."Contract_Id" as "Contract_Id_1",
			cd."Type_Code" as "Type_Code_1",
			cd."Effective_Date"
		FROM
			"Contract_Distributor_Agent" cda
				INNER JOIN "Agent" a ON cda."Agent_Id" = a."Agent_Id"
				INNER JOIN "Distributor" d ON cda."Distributor_Id" = d."Distributor_Id"
				INNER JOIN "Distributor_Commercial_Propert" dcp ON d."Distributor_Id" = dcp."Distributor_Id"
				INNER JOIN "Commercial_Property" cp ON dcp."Commercial_Property_Id" = cp."Commercial_Property_Id"
				INNER JOIN "Contract_Dates" cd ON cda."Contract_Id" = cd."Contract_Id"
		WHERE
			cda."Contract_Id" = 198827882 AND
			cda."Distributor_Type_Code" = 'CC' AND
			cda."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
			cda."Represents_Type_Prefix" = 'REPRESENTS' AND
			cd."Type_Code" = 'ESTCOE' AND
			d."Type_Code" = 'RE' AND
			dcp."Distributor_Type_Code" = 'RE'
	) key_data_result
		INNER JOIN "Cities" detail ON (detail."City_Code" = key_data_result."City_Code" OR detail."City_Code" IS NULL AND key_data_result."City_Code" IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	a."First_Name",
	a."Last_Name",
	d."Distributor_Name",
	cp_5."Street_Number",
	cp_5."Street_Name",
	cp_5."City_Code",
	cda."Agent_Id",
	cda."Distributor_Id",
	cda."Contract_Id",
	cda."Distributor_Type_Code",
	cda."Distributor_Agent_Type_Prefix",
	cda."Represents_Type_Prefix",
	a."Agent_Id",
	d."Distributor_Id",
	d."Type_Code",
	dcp."Distributor_Id",
	dcp."Commercial_Property_Id",
	dcp."Distributor_Type_Code",
	cp_5."Commercial_Property_Id",
	cp_5."State",
	cp_5."Zip_Code",
	cp_5."Zip_Plus_4",
	cd."Contract_Id",
	cd."Type_Code",
	cd."Effective_Date"
FROM
	"Contract_Distributor_Agent" cda
		INNER JOIN "Agent" a ON cda."Agent_Id" = a."Agent_Id"
		INNER JOIN "Distributor" d ON cda."Distributor_Id" = d."Distributor_Id"
		INNER JOIN "Distributor_Commercial_Propert" dcp ON d."Distributor_Id" = dcp."Distributor_Id"
		INNER JOIN "Commercial_Property" cp_5 ON dcp."Commercial_Property_Id" = cp_5."Commercial_Property_Id"
		INNER JOIN "Contract_Dates" cd ON cda."Contract_Id" = cd."Contract_Id"
WHERE
	cda."Contract_Id" = 198827882 AND
	cda."Distributor_Type_Code" = 'CC' AND
	cda."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
	cda."Represents_Type_Prefix" = 'REPRESENTS' AND
	cd."Type_Code" = 'ESTCOE' AND
	d."Type_Code" = 'RE' AND
	dcp."Distributor_Type_Code" = 'RE'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Cities"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Dates"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Commercial_Property"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor_Commercial_Propert"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Agent"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Distributor_Agent"

