use maplestory;

-- 공통코드
-- SELECT
-- 	a.seq
--     ,a.groupName
--     ,b.seq as codeSeq
-- 	,b.codeKey
--     ,b.codeName
-- FROM maplestory.ccg a
-- JOIN maplestory.cc b ON b.groupSeq = a.seq;

-- SELECT
-- 	a.seq
--     ,a.groupName
--     ,count(b.groupSeq) as codeCount
-- FROM maplestory.ccg a
-- JOIN maplestory.cc b ON b.groupSeq = a.seq
-- GROUP BY b.groupSeq;

SELECT DISTINCT
	a.seq
    ,a.groupName
    ,(
    SELECT 
		COUNT(groupSeq)
    FROM cc 
    WHERE groupSeq = a.seq
	)AS codeCount
FROM ccg a
JOIN cc b ON b.groupSeq = a.seq;


-- 로그인
-- SELECT
-- *
-- FROM member
-- WHERE Id="shinbeomsu" and password ="weq211";

-- 메인화면 (좋아요수가 높은 상위 24개의 사진 노출)
-- SELECT
-- postId
-- ,count(*) AS userLike
-- FROM maplestory.like
-- GROUP BY postId
-- ORDER BY count(*) DESC
-- LIMIT 24
-- ;

-- 게시물 화면 ( post , image , 작성자 정보 )
-- SELECT
-- *
-- FROM post a
-- JOIN image b
-- ON b.postId = a.seq
-- JOIN member c
-- ON a.writer = c.seq
-- WHERE a.seq = 1
-- ;

-- 북마크 (사용자 seq를 통해 최신 북마크가 먼저 나오도록 정렬)
-- SELECT
-- postId
-- ,addDate
-- FROM maplestory.bookmark
-- WHERE memberId = 3
-- ORDER BY addDate DESC;


