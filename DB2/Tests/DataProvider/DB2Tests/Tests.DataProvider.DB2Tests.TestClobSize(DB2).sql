-- DB2 DB2.LUW DB2LUW
DECLARE @data VarChar(100000) -- String
SET     @data = ' !"#$%&''()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç'
-- value above truncated for logging

INSERT INTO ALLTYPES
(
	INTDATATYPE,
	CLOBDATATYPE
)
VALUES
(
	2000,
	@data
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t".CLOBDATATYPE
FROM
	ALLTYPES "t"
WHERE
	"t".INTDATATYPE = 2000
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	ALLTYPES "p"
WHERE
	"p".INTDATATYPE = 2000

