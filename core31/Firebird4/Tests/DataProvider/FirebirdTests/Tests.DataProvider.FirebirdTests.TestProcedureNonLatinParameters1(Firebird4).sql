﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = _utf8 x'D098D0BCD18F'
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = _utf8 x'D0A4D0B0D0BCD0B8D0BBD0B8D18F'
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = _utf8 x'D09ED182D187D0B5D181D182D0B2D0BE'
DECLARE @GENDER Char(1) -- String
SET     @GENDER = 'M'
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = NULL

"Person_Insert"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST @take
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

