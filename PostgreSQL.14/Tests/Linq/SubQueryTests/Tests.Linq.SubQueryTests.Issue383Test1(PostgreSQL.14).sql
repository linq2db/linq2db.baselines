BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Distributor_Agent"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Agent"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Agent"
(
	"Agent_Id"   Int  NOT NULL,
	"First_Name" text     NULL,
	"Last_Name"  text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
VALUES
(1,'x','x')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Distributor"
(
	"Distributor_Id"   Int  NOT NULL,
	"Type_Code"        text     NULL,
	"Distributor_Name" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
VALUES
(1,'RE','x')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor_Commercial_Propert"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Distributor_Commercial_Propert"
(
	"Distributor_Id"         Int  NOT NULL,
	"Commercial_Property_Id" Int  NOT NULL,
	"Distributor_Type_Code"  text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
VALUES
(1,1,'RE')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Commercial_Property"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Dates"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Contract_Dates"
(
	"Contract_Id"    Int  NOT NULL,
	"Type_Code"      text     NULL,
	"Effective_Date" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
VALUES
(198827882,'ESTCOE','x')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Cities"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Cities"
(
	"City_Code" text     NULL,
	"City_Name" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
VALUES
('x','Urupinsk')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."City_Code",
	d_1."City_Name"
FROM
	(
		SELECT DISTINCT
			cp."City_Code"
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
			cda."Distributor_Type_Code" IS NOT NULL AND
			cda."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
			cda."Distributor_Agent_Type_Prefix" IS NOT NULL AND
			cda."Represents_Type_Prefix" = 'REPRESENTS' AND
			cda."Represents_Type_Prefix" IS NOT NULL AND
			cd."Type_Code" = 'ESTCOE' AND
			cd."Type_Code" IS NOT NULL AND
			d."Type_Code" = 'RE' AND
			d."Type_Code" IS NOT NULL AND
			dcp."Distributor_Type_Code" = 'RE' AND
			dcp."Distributor_Type_Code" IS NOT NULL
	) m_1
		INNER JOIN "Cities" d_1 ON d_1."City_Code" = m_1."City_Code" AND d_1."City_Code" IS NOT NULL AND m_1."City_Code" IS NOT NULL OR d_1."City_Code" IS NULL AND m_1."City_Code" IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	a."First_Name",
	a."Last_Name",
	d."Distributor_Name",
	cp."Street_Number",
	cp."Street_Name",
	cp."City_Code",
	cp."State",
	cp."Zip_Code",
	cp."Zip_Plus_4",
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
	cda."Distributor_Type_Code" IS NOT NULL AND
	cda."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
	cda."Distributor_Agent_Type_Prefix" IS NOT NULL AND
	cda."Represents_Type_Prefix" = 'REPRESENTS' AND
	cda."Represents_Type_Prefix" IS NOT NULL AND
	cd."Type_Code" = 'ESTCOE' AND
	cd."Type_Code" IS NOT NULL AND
	d."Type_Code" = 'RE' AND
	d."Type_Code" IS NOT NULL AND
	dcp."Distributor_Type_Code" = 'RE' AND
	dcp."Distributor_Type_Code" IS NOT NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Cities"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Dates"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Commercial_Property"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor_Commercial_Propert"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Distributor"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Agent"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Contract_Distributor_Agent"

