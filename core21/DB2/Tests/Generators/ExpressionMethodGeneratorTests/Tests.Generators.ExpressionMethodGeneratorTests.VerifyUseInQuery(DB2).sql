BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ExprPerson"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ExprPerson"
		(
			"Id"   Int           NOT NULL,
			"Name" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "ExprPerson"
(
	"Id",
	"Name"
)
VALUES
(0,'Person0'),
(1,'Person1'),
(2,'Person2'),
(3,'Person3'),
(4,'Person4'),
(5,'Person5'),
(6,'Person6'),
(7,'Person7'),
(8,'Person8'),
(9,'Person9'),
(10,'Person10'),
(11,'Person11'),
(12,'Person12'),
(13,'Person13'),
(14,'Person14'),
(15,'Person15'),
(16,'Person16'),
(17,'Person17'),
(18,'Person18'),
(19,'Person19')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ExprPerson"';
END

