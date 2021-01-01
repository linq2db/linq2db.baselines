BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ExprPerson"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ExprPerson"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "ExprPerson" ("Id", "Name") VALUES (0,'Person0')
	INTO "ExprPerson" ("Id", "Name") VALUES (1,'Person1')
	INTO "ExprPerson" ("Id", "Name") VALUES (2,'Person2')
	INTO "ExprPerson" ("Id", "Name") VALUES (3,'Person3')
	INTO "ExprPerson" ("Id", "Name") VALUES (4,'Person4')
	INTO "ExprPerson" ("Id", "Name") VALUES (5,'Person5')
	INTO "ExprPerson" ("Id", "Name") VALUES (6,'Person6')
	INTO "ExprPerson" ("Id", "Name") VALUES (7,'Person7')
	INTO "ExprPerson" ("Id", "Name") VALUES (8,'Person8')
	INTO "ExprPerson" ("Id", "Name") VALUES (9,'Person9')
	INTO "ExprPerson" ("Id", "Name") VALUES (10,'Person10')
	INTO "ExprPerson" ("Id", "Name") VALUES (11,'Person11')
	INTO "ExprPerson" ("Id", "Name") VALUES (12,'Person12')
	INTO "ExprPerson" ("Id", "Name") VALUES (13,'Person13')
	INTO "ExprPerson" ("Id", "Name") VALUES (14,'Person14')
	INTO "ExprPerson" ("Id", "Name") VALUES (15,'Person15')
	INTO "ExprPerson" ("Id", "Name") VALUES (16,'Person16')
	INTO "ExprPerson" ("Id", "Name") VALUES (17,'Person17')
	INTO "ExprPerson" ("Id", "Name") VALUES (18,'Person18')
	INTO "ExprPerson" ("Id", "Name") VALUES (19,'Person19')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ExprPerson"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

