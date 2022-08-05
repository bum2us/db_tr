use maplestory;

SELECT
	a.seq
    ,a.groupName
	,b.codeKey
    ,b.codeName
FROM maplestory.ccg a
JOIN maplestory.cc b ON b.groupSeq = a.seq;

-- 로그인
-- SELECT
-- *
-- FROM member
-- WHERE Id="shinbeomsu" and password ="weq211";