BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS billing_devtypes

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS billing_devtypes
(
	devtypeid    SERIAL  NOT NULL,
	typename     text    NOT NULL,
	"GlobalType" Int     NOT NULL,

	CONSTRAINT "PK_billing_devtypes" PRIMARY KEY (devtypeid)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS billing_devices

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS billing_devices
(
	devid     text NOT NULL,
	sernum    text     NULL,
	devtypeid Int  NOT NULL,

	CONSTRAINT "PK_billing_devices" PRIMARY KEY (devid)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "billing_DevReadingType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "billing_DevReadingType"
(
	"Id"             SERIAL  NOT NULL,
	"DevTypeId"      Int     NOT NULL,
	"Name"           text    NOT NULL,
	"Responsibility" Int     NOT NULL,

	CONSTRAINT "PK_billing_DevReadingType" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "billing_TempReading"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "billing_TempReading"
(
	id                 SERIAL     NOT NULL,
	"DevSerNum"        text       NOT NULL,
	devid              text           NULL,
	tsdevice           TimeStamp  NOT NULL,
	value              decimal    NOT NULL,
	"Devtypeid"        Int            NULL,
	"DevReadingTypeId" Int            NULL,
	"ReadingTypeName"  text           NULL,
	"DevGlobalType"    Int        NOT NULL,
	"Responsibility"   Int        NOT NULL,

	CONSTRAINT "PK_billing_TempReading" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = drt."Id",
	"Responsibility" = drt."Responsibility"
FROM
	"billing_DevReadingType" drt
WHERE
	drt."Name" = "billing_TempReading"."ReadingTypeName" AND
	drt."DevTypeId" = "billing_TempReading"."Devtypeid"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = (
		SELECT
			w."Id"
		FROM
			"billing_DevReadingType" w
		WHERE
			w."Name" = "billing_TempReading"."ReadingTypeName" AND
			w."DevTypeId" = "billing_TempReading"."Devtypeid"
		LIMIT 1
	),
	"Responsibility" = (
		SELECT
			w_1."Responsibility"
		FROM
			"billing_DevReadingType" w_1
		WHERE
			w_1."Name" = "billing_TempReading"."ReadingTypeName" AND
			w_1."DevTypeId" = "billing_TempReading"."Devtypeid"
		LIMIT 1
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "billing_TempReading"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "billing_DevReadingType"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS billing_devices

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS billing_devtypes

