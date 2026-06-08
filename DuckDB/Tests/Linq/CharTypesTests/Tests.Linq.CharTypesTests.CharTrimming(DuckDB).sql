-- DuckDB

SELECT
	MAX(t1.ID)
FROM
	AllTypes t1

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = '	'
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = '	'

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = '
'
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = '
'

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ''
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ''

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ''
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ''

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ''
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ''

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = ' '
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = '　'
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = ' '

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = chr(0)
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = chr(0)

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $NChar NChar(1) -- StringFixedLength
SET     $NChar = NULL
DECLARE $Char NChar(1) -- StringFixedLength
SET     $Char = NULL

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType
)
VALUES
(
	$NChar,
	$Char
)

-- DuckDB
DECLARE $lastId  -- Int32
SET     $lastId = 2

SELECT
	t1.ID,
	t1.char20DataType,
	t1.ncharDataType
FROM
	AllTypes t1
WHERE
	t1.ID > $lastId
ORDER BY
	t1.ID

-- DuckDB
DECLARE $lastId  -- Int32
SET     $lastId = 2

DELETE FROM
	AllTypes t1
WHERE
	t1.ID > $lastId

