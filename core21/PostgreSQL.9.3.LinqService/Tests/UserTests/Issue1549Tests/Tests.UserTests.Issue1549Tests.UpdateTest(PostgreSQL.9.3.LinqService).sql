BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE billing_devtypes
(
	devtypeid    SERIAL  NOT NULL,
	typename     text    NOT NULL,
	"GlobalType" Int     NOT NULL,

	CONSTRAINT "PK_billing_devtypes" PRIMARY KEY (devtypeid)
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE billing_devices
(
	devid     text NOT NULL,
	sernum    text     NULL,
	devtypeid Int  NOT NULL,

	CONSTRAINT "PK_billing_devices" PRIMARY KEY (devid)
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "billing_DevReadingType"
(
	"Id"             SERIAL  NOT NULL,
	"DevTypeId"      Int     NOT NULL,
	"Name"           text    NOT NULL,
	"Responsibility" Int     NOT NULL,

	CONSTRAINT "PK_billing_DevReadingType" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "billing_TempReading"
(
	id                 SERIAL     NOT NULL,
	"DevSerNum"        text       NOT NULL,
	devid              text           NULL,
	tsdevice           TimeStamp  NOT NULL,
	value              Decimal    NOT NULL,
	"Devtypeid"        Int            NULL,
	"DevReadingTypeId" Int            NULL,
	"ReadingTypeName"  text           NULL,
	"DevGlobalType"    Int        NOT NULL,
	"Responsibility"   Int        NOT NULL,

	CONSTRAINT "PK_billing_TempReading" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

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
		LIMIT :take
	),
	"Responsibility" = (
		SELECT 
			w_1."Responsibility"
		FROM
			"billing_DevReadingType" w_1
		WHERE
			w_1."Name" = "billing_TempReading"."ReadingTypeName" AND
			w_1."DevTypeId" = "billing_TempReading"."Devtypeid"
		LIMIT :take_1
	)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "billing_TempReading"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "billing_DevReadingType"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE billing_devices

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE billing_devtypes

