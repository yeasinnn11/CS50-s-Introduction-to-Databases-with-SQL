CREATE TABLE "words" (
    "sentence_id" INTEGER,
    "start_char" INTEGER,
    "length" INTEGER
);

INSERT INTO "words"("sentence_id","start_char","length") VALUES
(14,98,4),
(114,3,5),
(618,72,9),
(630,7,3),
(932,12,5),
(2230,50,7),
(2346,44,10),
(3041,14,5);

CREATE VIEW "message" AS
SELECT substr(sentence, start_char, length) AS "phrase" FROM "words"
JOIN "sentences" ON "sentences".id = "words"."sentence_id";

