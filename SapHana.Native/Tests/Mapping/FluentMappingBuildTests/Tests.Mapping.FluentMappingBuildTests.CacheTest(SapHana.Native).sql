-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Value"    NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Value",
	"LastName"
)
VALUES
(
	:"ID",
	:"Name",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Value"    NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Value",
	"LastName"
)
VALUES
(
	:"ID",
	:"Name",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	:"ID",
	:"Name",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	:"ID",
	:"Name",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT
	"t"."ID",
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

