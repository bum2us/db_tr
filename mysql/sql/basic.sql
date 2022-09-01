-- *****************************************
-- 테이블 수정 전에는 항상 꼭 반드시 진짜로 ER 부터 수정
-- *****************************************

INSERT INTO maplestory.member2(
	id
    ,password
    ,name
    ,age
	)
VALUES(
	"bum2us"
    ,"wkskskwlw"
    ,"신범수"
    ,28
    );

-- 전체 컬럼 조회
-- SELECT * FROM maplestory.member2;

CREATE TABLE IF NOT EXISTS maplestory.member2(
	`seq`	INT NOT NULL AUTO_INCREMENT,
    `id`	VARCHAR(45) NOT NULL,
    `password`	VARCHAR(45) NOT NULL, 
    `name`	VARCHAR(45) NOT NULL,
    `age`	INT NOT NULL,
PRIMARY KEY(`seq`))
;

-- 컬럼 추가
-- ALTER TABLE maplestory.member2 ADD COLUMN nickname VARCHAR(45) NOT NULL;

-- 컬럼 변경
-- ALTER TABLE maplestory.member2 MODIFY COLUMN nickname VARCHAR(100);

-- 컴럼 이름 변경comment
-- ALTER TABLE maplestory.member2 CHANGE COLUMN nickname nick VARCHAR(45);

-- 컬럼 삭제
-- ALTER TABLE maplestory.member2 DROP COLUMN nick;

-- 로우 삭제
-- DELETE FROM maplestory.member2 WHERE seq='1';

-- 값 업데이트
UPDATE maplestory.member2 SET 
id="lkii2",
age = 34
WHERE seq = 7;

-- 셀렉트 BETWEEN
-- SELECT * FROM maplestory.member2 WHERE age BETWEEN 19 and 30

-- 셀렉트 IS NULL
-- SELECT * FROM maplestory.member2 WHERE nickname IS null

-- 값이 비어있을경우에 대비해 디폴트 값을 설정할 수 있다.board
-- CREATE TABLE maplestory.post2(
-- `seq` INT NOT NULL AUTO_INCREMENT,
--    `createTime` TIMESTAMP NOT NULL DEFAULT NOW(),
--    `title` VARCHAR(45) NOT NULL DEFAULT '제목없음',
-- PRIMARY KEY(`seq`));

-- 업데이트가 되었을때 시간도 입력할 수 있다  ON UPDATE
-- ALTER TABLE maplestory.like MODIFY createDate TIMESTAMP DEFAULT NOW() ON UPDATE NOW();