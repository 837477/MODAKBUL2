CREATE OR REPLACE VIEW v_post AS (SELECT E.*, IFNULL(F.like_cnt, 0) AS like_cnt FROM (SELECT C.*, IFNULL(D.comment_cnt, 0) AS comment_cnt FROM (SELECT A.post_id, IF(A.post_anony=0, A.user_id, "익명") AS user_id, A.post_title, A.post_content, post_view, post_date, post_anony, post_secret, post_url_link, post_url_img, IF(A.post_anony=0, B.user_name, "익명") AS user_name, IF(A.post_anony=0, B.user_color, "#D8D8D8") AS user_color FROM post A LEFT JOIN (SELECT user_id, user_name, user_color FROM user) B ON A.user_id = B.user_id) C LEFT JOIN (SELECT post_id, COUNT(*) AS comment_cnt FROM post_comment GROUP BY post_id) D ON C.post_id = D.post_id) E LEFT JOIN (SELECT post_id, COUNT(*) AS like_cnt FROM post_like GROUP BY post_id) F ON E.post_id = F.post_id);


/*
CREATE OR REPLACE VIEW V_post AS (SELECT F.*, ifnull(E.like_cnt,0) AS like_cnt, ifnull(E.comment_cnt, 0) AS comment_cnt, ifnull(E.attach_cnt,0) AS attach_cnt FROM (SELECT C.post_id, C.like_cnt, C.comment_cnt, D.attach_cnt FROM (SELECT A.post_id, A.like_cnt, B.comment_cnt FROM (SELECT post_id, COUNT(*) AS like_cnt FROM post_like GROUP BY post_id) A LEFT JOIN (SELECT post_id, COUNT(*) AS comment_cnt FROM post_comment GROUP BY post_id) B ON A.post_id = B.post_id) C LEFT JOIN (SELECT post_id, COUNT(*) AS attach_cnt FROM post_attach GROUP BY post_id) D ON C.post_id = D.post_id) E RIGHT JOIN (SELECT * FROM post) F ON E.post_id = F.post_id);
*/