# DAI Knowledge Graph

Vedomostný graf vytvorený v rámci bakalárskej práce „Vedomostný graf na webovom sídle katedry“.

Projekt je zameraný na vytvorenie znalostnej bázy pre Katedru aplikovanej informatiky Fakulty matematiky, fyziky a informatiky Univerzity Komenského v Bratislave.

## Použité technológie

- MediaWiki 1.46.2
- Semantic MediaWiki 7.3.1
- Translate
- UniversalLanguageSelector
- MariaDB 11
- Docker
- Docker Compose

## Obsah vedomostného grafu

Vedomostný graf obsahuje tieto hlavné typy entít:

- Person
- Teacher
- Professor
- Associate Professor
- Assistant
- Student
- Alumni
- External Collaborator
- Department
- Course
- Research Area
- Study Program
- Thesis

Medzi hlavné vzťahy patria:

- Student → Supervisor → Teacher
- Teacher → Supervises → Student
- Teacher → Teaches → Course
- Teacher → ResearchArea → Research Area
- Student → Thesis → Thesis
- Person → MemberOf → Department
- Student → StudyProgram → Study Program
- Thesis → Author → Student
- Thesis → Supervisor → Teacher

## Požiadavky

Na spustenie projektu je potrebné mať nainštalované:

- Docker
- Docker Compose
- Git

## Spustenie projektu

Naklonovanie repozitára:

```bash
git clone https://github.com/ampavliuchenkowork-a11y/dai-knowledge-graph.git
cd dai-knowledge-graph