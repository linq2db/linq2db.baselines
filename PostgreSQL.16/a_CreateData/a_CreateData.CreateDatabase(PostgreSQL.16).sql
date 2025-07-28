BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Doctor"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Patient"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP FUNCTION IF EXISTS "TestTableFunctionSchema"()

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP MATERIALIZED VIEW IF EXISTS "Issue2023"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InheritanceParent"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER       PRIMARY KEY,
	"TypeDiscriminator"   INTEGER                       NULL,
	"Name"                VARCHAR(50)                   NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InheritanceChild"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER      PRIMARY KEY,
	"InheritanceParentId" INTEGER                  NOT NULL,
	"TypeDiscriminator"   INTEGER                      NULL,
	"Name"                VARCHAR(50)                  NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "Person"
(
	--PersonID   INTEGER PRIMARY KEY DEFAULT NEXTVAL('Seq'),
	"PersonID"   SERIAL PRIMARY KEY,
	"FirstName"  VARCHAR(50) NOT NULL,
	"LastName"   VARCHAR(50) NOT NULL,
	"MiddleName" VARCHAR(50),
	"Gender"     CHAR(1)     NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

COMMENT ON TABLE  "Person"            IS 'This is the Person table';
COMMENT ON COLUMN "Person"."PersonID" IS 'This is the Person.PersonID column';

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     primary key references "Person"("PersonID") NOT NULL,
	"Taxonomy" VARCHAR(50) NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  INTEGER      primary key references "Person"("PersonID") NOT NULL,
	"Diagnosis" VARCHAR(256) NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION reverse(text) RETURNS text
	AS $_$
DECLARE
original alias for $1;
	reverse_str text;
	i int4;
BEGIN
	reverse_str := '';
	FOR i IN REVERSE LENGTH(original)..1 LOOP
		reverse_str := reverse_str || substr(original,i,1);
	END LOOP;
RETURN reverse_str;
END;$_$
	LANGUAGE plpgsql IMMUTABLE;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Parent"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Child"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "GrandChild"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "LinqDataTypes"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "LinqDataTypes"
(
	"ID"             int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp,
	"BoolValue"      boolean,
	"GuidValue"      uuid,
	"BinaryValue"    bytea       NULL,
	"SmallIntValue"  smallint,
	"IntValue"       int         NULL,
	"BigIntValue"    bigint      NULL,
	"StringValue"    varchar(50) NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "GetParentByID"(id int)
RETURNS TABLE ("ParentID" int, "Value1" int)
AS $$ SELECT * FROM "Parent" WHERE "ParentID" = $1 $$
LANGUAGE SQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS  entity

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE entity
(
	the_name character varying(255) NOT NULL,
	CONSTRAINT entity_name_key UNIQUE (the_name)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION add_if_not_exists(p_name character varying)
	RETURNS void AS
$BODY$
BEGIN
	BEGIN
		insert into entity(the_name) values(p_name);
	EXCEPTION WHEN unique_violation THEN
		-- is exists, do nothing
	END;
END;
$BODY$
	LANGUAGE plpgsql;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SequenceTest1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SequenceTest2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SequenceTest3"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SequenceCustomNamingTest"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SEQUENCE IF EXISTS SequenceTestSeq

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SEQUENCE SequenceTestSeq INCREMENT 1 START 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SEQUENCE IF EXISTS "SequenceTest2_ID_seq"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SEQUENCE "SequenceTest2_ID_seq" INCREMENT 1 START 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SEQUENCE IF EXISTS test_schema."SequenceCustomNamingTest__seq__"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "SequenceTest1"
(
	"ID"    INTEGER PRIMARY KEY,
	"Value" VARCHAR(50)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "SequenceTest2"
(
	"ID"    INTEGER PRIMARY KEY DEFAULT NEXTVAL('"SequenceTest2_ID_seq"'),
	"Value" VARCHAR(50)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "SequenceTest3"
(
	"ID"    INTEGER PRIMARY KEY DEFAULT NEXTVAL('SequenceTestSeq'),
	"Value" VARCHAR(50)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIdentity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SEQUENCE IF EXISTS "TestIdentity_ID_seq"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SEQUENCE "TestIdentity_ID_seq" INCREMENT 1 START 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestIdentity" (
	"ID" INTEGER PRIMARY KEY DEFAULT NEXTVAL('"TestIdentity_ID_seq"')
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AllTypes"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AllTypes"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TYPE IF EXISTS color

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TYPE color AS ENUM ('Red', 'Green', 'Blue');

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "AllTypes"
(
	"ID"                  serial               NOT NULL PRIMARY KEY,

	"bigintDataType"      bigint                   NULL,
	"numericDataType"     numeric                  NULL,
	"smallintDataType"    smallint                 NULL,
	"intDataType"         int                      NULL,
	"moneyDataType"       money                    NULL,
	"doubleDataType"      double precision         NULL,
	"realDataType"        real                     NULL,

	"timestampDataType"   timestamp                NULL,
	"timestampTZDataType" timestamp with time zone NULL,
	"dateDataType"        date                     NULL,
	"timeDataType"        time                     NULL,
	"timeTZDataType"      time with time zone      NULL,
	"intervalDataType"    interval                 NULL,
	"intervalDataType2"   interval                 NULL,

	"charDataType"        char(1)                  NULL,
	"char20DataType"      char(20)                 NULL,
	"varcharDataType"     varchar(20)              NULL,
	"textDataType"        text                     NULL,

	"binaryDataType"      bytea                    NULL,

	"uuidDataType"        uuid                     NULL,
	"bitDataType"         bit(3)                   NULL,
	"booleanDataType"     boolean                  NULL,
	"colorDataType"       color                    NULL,

	"pointDataType"       point                    NULL,
	"lsegDataType"        lseg                     NULL,
	"boxDataType"         box                      NULL,
	"pathDataType"        path                     NULL,
	"polygonDataType"     polygon                  NULL,
	"circleDataType"      circle                   NULL,
	"lineDataType"        line                     NULL,

	"inetDataType"        inet                     NULL,
	"cidrDataType"        cidr                     NULL,
	"macaddrDataType"     macaddr                  NULL,



	"macaddr8DataType"  macaddr8                   NULL,




	"jsonDataType"        json                     NULL,


	"jsonbDataType"       jsonb                    NULL,



	"xmlDataType"         xml                      NULL,
	"varBitDataType"      varbit                   NULL,

	StrArray              text[]                   NULL,
	IntArray              int[]                    NULL,
	Int2dArray            int[][]                  NULL,
	LongArray             bigint[]                 NULL,
	IntervalArray         interval[]               NULL,
	DoubleArray           double precision[]       NULL,
	NumericArray          numeric[]                NULL,
	DecimalArray          decimal[]                NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"numericDataType",
	"smallintDataType",
	"intDataType",
	"moneyDataType",
	"doubleDataType",
	"realDataType",

	"timestampDataType",
	"timestampTZDataType",
	"dateDataType",
	"timeDataType",
	"timeTZDataType",
	"intervalDataType",

	"charDataType",
	"varcharDataType",
	"textDataType",

	"binaryDataType",

	"uuidDataType",
	"bitDataType",
	"booleanDataType",
	"colorDataType",

	"pointDataType",
	"lsegDataType",
	"boxDataType",
	"pathDataType",
	"polygonDataType",
	"circleDataType",

	"inetDataType",
	"macaddrDataType",

	"xmlDataType",
	"varBitDataType"
)
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,

	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,

	NULL,
	NULL,
	NULL,

	NULL,

	NULL,
	NULL,
	NULL,
	NULL,

	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,

	NULL,
	NULL,

	NULL,

	NULL
UNION ALL
SELECT
	1000000,
	9999999,
	25555,
	7777777,
	100000,
	20.31,
	16.2,

	Cast('2012-12-12 12:12:12' as timestamp),
	Cast('2012-12-12 12:12:12-04' as timestamp with time zone),
	Cast('2012-12-12 12:12:12' as date),
	Cast('2012-12-12 12:12:12' as time),
	Cast('12:12:12' as time with time zone),
	Cast('1 3:05:20' as interval),

	'1',
	'234',
	'567',

	E'\\052'::bytea,

	Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uuid),
	B'101',
	true,
	'Green'::color,

	'(1,2)'::point,
	'((1,2),(3,4))'::lseg,
	'((1,2),(3,4))'::box,
	'((1,2),(3,4))'::path,
	'((1,2),(3,4))'::polygon,
	'((1,2),3)'::circle,

	'192.168.1.1'::inet,
	'01:02:03:04:05:06'::macaddr,

	XMLPARSE (DOCUMENT'<root><element strattr="strvalue" intattr="12345"/></root>'),

	B'1011'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS TestSameName

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_schema.TestSameName

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_schema.TestSerialIdentity

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_schema."TestSchemaIdentity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SEQUENCE IF EXISTS test_schema."TestSchemaIdentity_ID_seq"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SCHEMA IF EXISTS test_schema

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SCHEMA test_schema

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SEQUENCE test_schema."TestSchemaIdentity_ID_seq" INCREMENT 1 START 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SEQUENCE test_schema."SequenceCustomNamingTest__seq__" INCREMENT 1 START 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "SequenceCustomNamingTest"
(
	"ID"    INTEGER PRIMARY KEY DEFAULT NEXTVAL('test_schema."SequenceCustomNamingTest__seq__"'),
	"Value" VARCHAR(50)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE test_schema."TestSchemaIdentity" (
	"ID" INTEGER PRIMARY KEY DEFAULT NEXTVAL('test_schema."TestSchemaIdentity_ID_seq"')
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE test_schema.TestSerialIdentity
(
	"ID" serial NOT NULL PRIMARY KEY
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE test_schema.TestSameName
(
	ID serial NOT NULL PRIMARY KEY
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE TestSameName
(
	ID serial NOT NULL PRIMARY KEY
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestMerge1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestMerge2"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestMerge1"
(
	"Id"		INTEGER	PRIMARY KEY,
	"Field1"	INTEGER	NULL,
	"Field2"	INTEGER	NULL,
	"Field3"	INTEGER	NULL,
	"Field4"	INTEGER	NULL,
	"Field5"	INTEGER	NULL,

	"FieldInt64"      BIGINT                   NULL,
	"FieldBoolean"    BOOLEAN                  NULL,
	"FieldString"     VARCHAR(20)              NULL,
	"FieldNString"    VARCHAR(20)              NULL,
	"FieldChar"       CHAR(1)                  NULL,
	"FieldNChar"      CHAR(1)                  NULL,
	"FieldFloat"      FLOAT(24)                NULL,
	"FieldDouble"     FLOAT(53)                NULL,
	"FieldDateTime"   TIMESTAMP                NULL,
	"FieldDateTime2"  TIMESTAMP WITH TIME ZONE NULL,
	"FieldBinary"     BYTEA                    NULL,
	"FieldGuid"       UUID                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)          NULL,
	"FieldDate"       DATE                     NULL,
	"FieldTime"       TIME(7)                  NULL,
	"FieldEnumString" VARCHAR(20)              NULL,
	"FieldEnumNumber" INT                      NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestMerge2"
(
	"Id"		INTEGER	PRIMARY KEY,
	"Field1"	INTEGER	NULL,
	"Field2"	INTEGER	NULL,
	"Field3"	INTEGER	NULL,
	"Field4"	INTEGER	NULL,
	"Field5"	INTEGER	NULL,

	"FieldInt64"      BIGINT                   NULL,
	"FieldBoolean"    BOOLEAN                  NULL,
	"FieldString"     VARCHAR(20)              NULL,
	"FieldNString"    VARCHAR(20)              NULL,
	"FieldChar"       CHAR(1)                  NULL,
	"FieldNChar"      CHAR(1)                  NULL,
	"FieldFloat"      FLOAT(24)                NULL,
	"FieldDouble"     FLOAT(53)                NULL,
	"FieldDateTime"   TIMESTAMP                NULL,
	"FieldDateTime2"  TIMESTAMP WITH TIME ZONE NULL,
	"FieldBinary"     BYTEA                    NULL,
	"FieldGuid"       UUID                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)          NULL,
	"FieldDate"       DATE                     NULL,
	"FieldTime"       TIME(7)                  NULL,
	"FieldEnumString" VARCHAR(20)              NULL,
	"FieldEnumNumber" INT                      NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION AddIssue792Record()
	RETURNS void AS
$BODY$
BEGIN
	INSERT INTO dbo."AllTypes"(char20DataType) VALUES('issue792');
END;
$BODY$
	LANGUAGE PLPGSQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestTableFunctionSchema"() RETURNS SETOF "AllTypes"
AS $$ SELECT * FROM "AllTypes" $$ LANGUAGE SQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestFunctionParameters"(param1 INT, INOUT param2 INT, OUT param3 INT)
AS $$ SELECT param1, param2 $$ LANGUAGE SQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestTableFunction"(param1 INT) RETURNS TABLE(param2 INT)
AS $$ SELECT param1 UNION ALL SELECT param1 $$ LANGUAGE SQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestTableFunction1"(param1 INT, param2 INT) RETURNS TABLE(param3 INT, param4 INT)
AS $$ SELECT param1, 23 UNION ALL SELECT 333, param2 $$ LANGUAGE SQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestScalarFunction"(param INT) RETURNS VARCHAR(10)
AS $$ BEGIN RETURN 'done'; END $$ LANGUAGE PLPGSQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "TestSingleOutParameterFunction"(param1 INT, OUT param2 INT)
AS $$ BEGIN param2 := param1 + 123; END $$ LANGUAGE PLPGSQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP AGGREGATE IF EXISTS test_avg(float8)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE AGGREGATE test_avg(float8)
(
	sfunc = float8_accum,
	stype = float8[],
	finalfunc = float8_avg,
	initcond = '{0,0,0}'
);

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "bool"(param INT) RETURNS VARCHAR(20)
AS $$ BEGIN RETURN 'issue1295test'; END $$ LANGUAGE PLPGSQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION issue_1742_date(p1 date) RETURNS int AS $$
BEGIN
	RETURN 42;
END; $$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION issue_1742_tstz(p1 TIMESTAMP WITH TIME ZONE) RETURNS int AS $$
BEGIN
	RETURN 43;
END; $$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION issue_1742_ts(p1 TIMESTAMP) RETURNS int AS $$
BEGIN
	RETURN 44;
END; $$
LANGUAGE plpgsql;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE MATERIALIZED VIEW "Issue2023" AS select * from "Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

COMMENT ON MATERIALIZED VIEW  "Issue2023" IS 'This is the Issue2023 matview';
COMMENT ON COLUMN             "Issue2023"."PersonID" IS 'This is the Issue2023.PersonID column';

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP FUNCTION IF EXISTS "SchemaName"."fnTest"(INT)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP SCHEMA IF EXISTS "SchemaName"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE SCHEMA "SchemaName"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION "SchemaName"."fnTest"(param INT) RETURNS VARCHAR(20)
AS $$ BEGIN RETURN 'issue2679test'; END $$ LANGUAGE PLPGSQL;

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS same_name2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS same_name1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS same_name

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE same_name (
id INTEGER PRIMARY KEY
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE same_name1 (
id			INTEGER PRIMARY KEY,
same_name	INTEGER NULL,

CONSTRAINT same_name
	FOREIGN KEY (same_name)
	REFERENCES same_name (id)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE same_name2 (
id			INTEGER PRIMARY KEY,
same_name	INTEGER NULL,

CONSTRAINT same_name
	FOREIGN KEY (same_name)
	REFERENCES same_name (id)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE "CollatedTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "CollatedTable"
(
	"Id"				INT NOT NULL,
	"CaseSensitive"		VARCHAR(20) NOT NULL,
	"CaseInsensitive"	VARCHAR(20) NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE "TestMergeIdentity"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestMergeIdentity"
(
	"Id"     SERIAL NOT NULL PRIMARY KEY,
	"Field"  INT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE OR REPLACE FUNCTION overloads(input1 integer)
 RETURNS integer
 LANGUAGE sql
AS $function$
   SELECT input1;
$function$
;

CREATE OR REPLACE FUNCTION overloads(input1 integer, input2 smallint)
 RETURNS smallint
 LANGUAGE sql
AS $function$
   SELECT input2;
$function$
;

CREATE OR REPLACE FUNCTION overloads(input1 integer, input2 integer)
 RETURNS smallint
 LANGUAGE sql
AS $function$
   SELECT overloads(input2, input1::smallint);
$function$
;





DROP TABLE IF EXISTS multitenant_table;

-- Create the main table
CREATE TABLE multitenant_table (
    TenantId UUID NOT NULL,
    Id UUID NOT NULL,
    Name VARCHAR(100),
    Description TEXT,
    CreatedAt TIMESTAMP NOT NULL DEFAULT NOW()

	, PRIMARY KEY (TenantId, Id)

) PARTITION BY LIST (TenantId);

-- Create partitions
CREATE TABLE multitenant_table_tenant1 PARTITION OF multitenant_table
    FOR VALUES IN ('11111111-1111-1111-1111-111111111111');

CREATE TABLE multitenant_table_tenant2 PARTITION OF multitenant_table
    FOR VALUES IN ('22222222-2222-2222-2222-222222222222');

CREATE TABLE multitenant_table_tenant3 PARTITION OF multitenant_table
    FOR VALUES IN ('33333333-3333-3333-3333-333333333333');

-- Insert sample data
INSERT INTO multitenant_table (TenantId, Id, Name, Description, CreatedAt) VALUES
('11111111-1111-1111-1111-111111111111', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Tenant1 Record1', 'Description for Tenant1 Record1', NOW()),
('11111111-1111-1111-1111-111111111111', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Tenant1 Record2', 'Description for Tenant1 Record2', NOW()),
('22222222-2222-2222-2222-222222222222', 'cccccccc-cccc-cccc-cccc-cccccccccccc', 'Tenant2 Record1', 'Description for Tenant2 Record1', NOW()),
('22222222-2222-2222-2222-222222222222', 'dddddddd-dddd-dddd-dddd-dddddddddddd', 'Tenant2 Record2', 'Description for Tenant2 Record2', NOW()),
('33333333-3333-3333-3333-333333333333', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Tenant3 Record1', 'Description for Tenant3 Record1', NOW()),
('33333333-3333-3333-3333-333333333333', 'ffffffff-ffff-ffff-ffff-ffffffffffff', 'Tenant3 Record2', 'Description for Tenant3 Record2', NOW());

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(1,1.11::decimal(3, 2),'2001-01-11 01:11:21.100'::timestamp,NULL,True,'ef129165-6ffe-4df9-bb6b-bb16e413c883'::uuid,1,NULL,1::bigint,NULL),
(2,2.49::decimal(3, 2),'2005-05-15 05:15:25.500'::timestamp,NULL,False,'bc663a61-7b40-4681-ac38-f9aaf55b706b'::uuid,2,NULL,2::bigint,''),
(3,3.99::decimal(3, 2),'2009-09-19 09:19:29.090'::timestamp,NULL,True,'d2f970c0-35ac-4987-9cd5-5badb1757436'::uuid,3,NULL,NULL,'1'),
(4,4.50::decimal(3, 2),'2009-09-20 09:19:29.090'::timestamp,NULL,False,'40932fdb-1543-4e4a-ac2c-ca371604fb4b'::uuid,4,NULL,NULL,'2'),
(5,5.50::decimal(3, 2),'2009-09-20 09:19:29.090'::timestamp,NULL,True,'febe3eca-cb5f-40b2-ad39-2979d312afca'::uuid,5,NULL,NULL,'3'),
(6,6.55::decimal(3, 2),'2009-09-22 09:19:29.090'::timestamp,NULL,False,'8d3c5d1d-47db-4730-9fe7-968f6228a4c0'::uuid,6,NULL,NULL,'4'),
(7,7.00::decimal(3, 2),'2009-09-23 09:19:29.090'::timestamp,NULL,True,'48094115-83af-46dd-a906-bff26ee21ee2'::uuid,7,NULL,NULL,'5'),
(8,8.99::decimal(3, 2),'2009-09-24 09:19:29.090'::timestamp,NULL,False,'c1139f1f-1335-4cd4-937e-92602f732dd3'::uuid,8,NULL,NULL,'6'),
(9,9.63::decimal(3, 2),'2009-09-25 09:19:29.090'::timestamp,NULL,True,'46c5c512-3d4b-4cf7-b4e7-1de080789e5d'::uuid,9,NULL,NULL,'7'),
(10,10.77::decimal(4, 2),'2009-09-26 09:19:29.090'::timestamp,NULL,False,'61b2bc55-147f-4b40-93ed-a4aa83602fee'::uuid,10,NULL,NULL,'8'),
(11,11.45::decimal(4, 2),'2009-09-27'::date,NULL,True,'d3021d18-97f0-4dc0-98d0-f0c7df4a1230'::uuid,11,NULL,NULL,'9'),
(12,11.45::decimal(4, 2),'2012-11-07 19:19:29.090'::timestamp,NULL,True,'03021d18-97f0-4dc0-98d0-f0c7df4a1230'::uuid,12,NULL,NULL,'0')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1,1),
(2,NULL),
(3,3),
(4,NULL),
(5,5),
(6,6),
(7,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(1,11),
(2,21),
(2,22),
(3,31),
(3,32),
(3,33),
(4,41),
(4,42),
(4,43),
(4,44),
(6,61),
(6,62),
(6,63),
(6,64),
(6,65),
(6,66),
(7,77)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(1,11,111),
(2,21,211),
(2,21,212),
(2,22,221),
(2,22,222),
(3,31,311),
(3,31,312),
(3,31,313),
(3,32,321),
(3,32,322),
(3,32,323),
(3,33,331),
(3,33,332),
(3,33,333),
(4,41,411),
(4,41,412),
(4,41,413),
(4,41,414),
(4,42,421),
(4,42,422),
(4,42,423),
(4,42,424)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "InheritanceParent"
(
	"InheritanceParentId",
	"TypeDiscriminator",
	"Name"
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "InheritanceChild"
(
	"InheritanceChildId",
	"TypeDiscriminator",
	"InheritanceParentId",
	"Name"
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

