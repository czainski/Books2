  SELECT
    [Student],
    [Subject],
    [Marks]
  FROM Grades  where Student like 'A%'
;
SELECT * FROM (
  SELECT
    [Student],
    [Subject],
    [Marks]
  FROM Grades where Student like 'A%'
) StudentResults
PIVOT (
  SUM([Marks])
  FOR [Subject]
  IN (
    [Mathematics],
    [Science],
    [Geography]
  )
) AS PivotTable
