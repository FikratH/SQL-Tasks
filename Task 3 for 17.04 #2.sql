CREATE VIEW [SESSIONS_VIEW]
AS
SELECT mov.ID, mov.Name, mov.Year, gen.Genre, movses.Date as SessionDate, lang.Name as Language, rooms.RoomName, rooms.MoviesType as Type From Movies mov
JOIN Genres gen
ON mov.GenreId = gen.id
JOIN MovieSessions movses
ON movses.MovieID = mov.ID
JOIN Languages lang
ON movses.LanguageID = lang.ID
JOIN CinemaRooms rooms
ON movses.RoomID = rooms.ID

SELECT * FROM SESSIONS_VIEW