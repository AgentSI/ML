SELECT authors.name,
	   papers.year,
	   papers.title,
	   papers.pdf_name,
	   papers.abstract,
	   papers.paper_text
FROM paper_authors
LEFT JOIN authors ON authors.id = paper_authors.author_id
INNER JOIN papers ON papers.id = paper_authors.paper_id;
