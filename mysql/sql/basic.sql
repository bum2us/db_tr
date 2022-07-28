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
SELECT * FROM maplestory.member2;

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

-- 컴럼 이름 변경
-- ALTER TABLE maplestory.member2 CHANGE COLUMN nickname nick VARCHAR(45);

-- 컬럼 삭제
-- ALTER TABLE maplestory.member2 DROP COLUMN nick;

-- 로우 삭제
-- DELETE FROM maplestory.member2 WHERE seq='1';

-- 값 업데이트
UPDATE maplestory.member2 SET 
id="바꿔봅시다",
name="홍길동"
WHERE seq = 4;