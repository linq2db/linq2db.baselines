BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @data_1 VarChar(100000) -- String
SET     @data_1 = ' !"#$%&''()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç'
-- value above truncated for logging, actual length is 100000

INSERT INTO ALLTYPES
(
	INTDATATYPE,
	CLOBDATATYPE
)
VALUES
(
	2000,
	@data_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".CLOBDATATYPE
FROM
	ALLTYPES "t"
WHERE
	"t".INTDATATYPE = 2000
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	ALLTYPES "t1"
WHERE
	"t1".INTDATATYPE = 2000

