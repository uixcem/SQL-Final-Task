

## My Dictators Database Structure

-- First, I created a table for countries
CREATE TABLE countries (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(50)
);

-- Then a table for the dictators
CREATE TABLE dictators (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT,
    birth_year INT,
    death_year INT,
    rule_start INT,
    rule_end INT,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

-- I grouped countries by regions to make it easier to analyze
-- Countries table
CREATE TABLE countries (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(50)
);

-- Dictators table
CREATE TABLE dictators (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT,
    birth_year INT,
    death_year INT,
    rule_start INT,
    rule_end INT,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

-- Countries data grouped by region
INSERT INTO countries VALUES
-- Europe
(1, 'Germany', 'Europe'),
(2, 'East Germany', 'Europe'),
(3, 'Soviet Union', 'Europe'),
(4, 'Russia', 'Europe'),
(5, 'Italy', 'Europe'),
(6, 'Spain', 'Europe'),
(7, 'Portugal', 'Europe'),
(8, 'Romania', 'Europe'),
(9, 'Albania', 'Europe'),
(10, 'Yugoslavia', 'Europe'),
(11, 'Bulgaria', 'Europe'),
(12, 'Hungary', 'Europe'),
(13, 'Czechoslovakia', 'Europe'),
(14, 'Poland', 'Europe'),
(15, 'Belarus', 'Europe'),
(16, 'Serbia', 'Europe'),

-- Asia
(17, 'North Korea', 'Asia'),
(18, 'China', 'Asia'),
(19, 'Cambodia', 'Asia'),
(20, 'Vietnam', 'Asia'),
(21, 'Philippines', 'Asia'),
(22, 'Burma/Myanmar', 'Asia'),
(23, 'Iraq', 'Asia'),
(24, 'Syria', 'Asia'),
(25, 'Afghanistan', 'Asia'),
(26, 'Turkmenistan', 'Asia'),
(27, 'Uzbekistan', 'Asia'),
(28, 'Azerbaijan', 'Asia'),
(29, 'Turkey', 'Asia'),

-- Africa
(30, 'Libya', 'Africa'),
(31, 'Egypt', 'Africa'),
(32, 'Tunisia', 'Africa'),
(33, 'Uganda', 'Africa'),
(34, 'Zimbabwe', 'Africa'),
(35, 'Central African Republic', 'Africa'),
(36, 'Equatorial Guinea', 'Africa'),
(37, 'Ethiopia', 'Africa'),
(38, 'Somalia', 'Africa'),
(39, 'Sudan', 'Africa'),
(40, 'South Sudan', 'Africa'),
(41, 'Eritrea', 'Africa'),
(42, 'Zaire/DR Congo', 'Africa'),
(43, 'Burundi', 'Africa'),
(44, 'Rwanda', 'Africa'),
(45, 'Liberia', 'Africa'),
(46, 'Gambia', 'Africa'),
(47, 'Togo', 'Africa'),
(48, 'Malawi', 'Africa'),

-- Americas
(49, 'Cuba', 'Americas'),
(50, 'Haiti', 'Americas'),
(51, 'Dominican Republic', 'Americas'),
(52, 'Nicaragua', 'Americas'),
(53, 'Panama', 'Americas'),
(54, 'Venezuela', 'Americas'),
(55, 'Paraguay', 'Americas'),
(56, 'Chile', 'Americas'),
(57, 'Argentina', 'Americas'),
(58, 'Brazil', 'Americas'),
(59, 'Bolivia', 'Americas'),
(60, 'Peru', 'Americas'),
(61, 'Guatemala', 'Americas');

-- Dictators data
INSERT INTO dictators VALUES
-- Europe
(1, 'Adolf Hitler', 1, 1889, 1945, 1933, 1945),
(2, 'Erich Honecker', 2, 1912, 1994, 1971, 1989),
(3, 'Vladimir Lenin', 3, 1870, 1924, 1917, 1924),
(4, 'Joseph Stalin', 3, 1878, 1953, 1922, 1953),
(5, 'Nikita Khrushchev', 3, 1894, 1971, 1953, 1964),
(6, 'Leonid Brezhnev', 3, 1906, 1982, 1964, 1982),
(7, 'Vladimir Putin', 4, 1952, NULL, 2000, NULL),
(8, 'Benito Mussolini', 5, 1883, 1945, 1922, 1943),
(9, 'Francisco Franco', 6, 1892, 1975, 1939, 1975),
(10, 'António Salazar', 7, 1889, 1970, 1932, 1968),
(11, 'Nicolae Ceaușescu', 8, 1918, 1989, 1965, 1989),
(12, 'Enver Hoxha', 9, 1908, 1985, 1944, 1985),
(13, 'Josip Broz Tito', 10, 1892, 1980, 1943, 1980),
(14, 'Slobodan Milošević', 16, 1941, 2006, 1989, 2000),
(15, 'Todor Zhivkov', 11, 1911, 1998, 1954, 1989),
(16, 'János Kádár', 12, 1912, 1989, 1956, 1988),
(17, 'Klement Gottwald', 13, 1896, 1953, 1948, 1953),
(18, 'Gustáv Husák', 13, 1913, 1991, 1969, 1987),
(19, 'Wojciech Jaruzelski', 14, 1923, 2014, 1981, 1990),
(20, 'Alexander Lukashenko', 15, 1954, NULL, 1994, NULL),

-- Asia
(21, 'Kim Il-sung', 17, 1912, 1994, 1948, 1994),
(22, 'Kim Jong-il', 17, 1941, 2011, 1994, 2011),
(23, 'Kim Jong-un', 17, 1984, NULL, 2011, NULL),
(24, 'Mao Zedong', 18, 1893, 1976, 1949, 1976),
(25, 'Deng Xiaoping', 18, 1904, 1997, 1978, 1989),
(26, 'Xi Jinping', 18, 1953, NULL, 2012, NULL),
(27, 'Pol Pot', 19, 1925, 1998, 1975, 1979),
(28, 'Ho Chi Minh', 20, 1890, 1969, 1945, 1969),
(29, 'Ferdinand Marcos', 21, 1917, 1989, 1965, 1986),
(30, 'Ne Win', 22, 1911, 2002, 1962, 1988),
(31, 'Than Shwe', 22, 1933, NULL, 1992, 2011),
(32, 'Saddam Hussein', 23, 1937, 2006, 1979, 2003),
(33, 'Hafez al-Assad', 24, 1930, 2000, 1971, 2000),
(34, 'Bashar al-Assad', 24, 1965, NULL, 2000, NULL),
(35, 'Mohammad Najibullah', 25, 1947, 1996, 1987, 1992),
(36, 'Saparmurat Niyazov', 26, 1940, 2006, 1985, 2006),
(37, 'Gurbanguly Berdimuhamedow', 26, 1957, NULL, 2006, 2022),
(38, 'Islam Karimov', 27, 1938, 2016, 1989, 2016),
(39, 'Heydar Aliyev', 28, 1923, 2003, 1993, 2003),
(40, 'Ilham Aliyev', 28, 1961, NULL, 2003, NULL),
(41, 'Recep Tayyip Erdoğan', 29, 1954, NULL, 2003, NULL),

-- Africa
(42, 'Muammar Gaddafi', 30, 1942, 2011, 1969, 2011),
(43, 'Gamal Abdel Nasser', 31, 1918, 1970, 1954, 1970),
(44, 'Anwar Sadat', 31, 1918, 1981, 1970, 1981),
(45, 'Hosni Mubarak', 31, 1928, 2020, 1981, 2011),
(46, 'Zine El Abidine Ben Ali', 32, 1936, 2019, 1987, 2011),
(47, 'Idi Amin', 33, 1925, 2003, 1971, 1979),
(48, 'Milton Obote', 33, 1925, 2005, 1966, 1971),
(49, 'Robert Mugabe', 34, 1924, 2019, 1980, 2017),
(50, 'Jean-Bédel Bokassa', 35, 1921, 1996, 1966, 1979),
(51, 'Francisco Macías Nguema', 36, 1924, 1979, 1968, 1979),
(52, 'Teodoro Obiang Nguema', 36, 1942, NULL, 1979, 2022),
(53, 'Mengistu Haile Mariam', 37, 1937, NULL, 1977, 1991),
(54, 'Siad Barre', 38, 1919, 1995, 1969, 1991),
(55, 'Omar al-Bashir', 39, 1944, NULL, 1989, 2019),
(56, 'Salva Kiir Mayardit', 40, 1951, NULL, 2011, NULL),
(57, 'Isaias Afwerki', 41, 1946, NULL, 1993, NULL),
(58, 'Mobutu Sese Seko', 42, 1930, 1997, 1965, 1997),
(59, 'Michel Micombero', 43, 1940, 1983, 1966, 1976),
(60, 'Pierre Buyoya', 43, 1949, 2020, 1987, 1993),
(61, 'Juvénal Habyarimana', 44, 1937, 1994, 1973, 1994),
(62, 'Samuel Doe', 45, 1951, 1990, 1980, 1990),
(63, 'Charles Taylor', 45, 1948, NULL, 1997, 2003),
(64, 'Yahya Jammeh', 46, 1965, NULL, 1994, 2017),
(65, 'Gnassingbé Eyadéma', 47, 1935, 2005, 1967, 2005),
(66, 'Hastings Banda', 48, 1898, 1997, 1964, 1994),

-- Americas
(67, 'Fulgencio Batista', 49, 1901, 1973, 1952, 1959),
(68, 'Fidel Castro', 49, 1926, 2016, 1959, 2008),
(69, 'Raúl Castro', 49, 1931, NULL, 2008, 2018),
(70, 'François Duvalier', 50, 1907, 1971, 1957, 1971),
(71, 'Jean-Claude Duvalier', 50, 1951, 2014, 1971, 1986),
(72, 'Rafael Trujillo', 51, 1891, 1961, 1930, 1961),
(73, 'Joaquín Balaguer', 51, 1906, 2002, 1966, 1978),
(74, 'Anastasio Somoza García', 52, 1896, 1956, 1937, 1956),
(75, 'Anastasio Somoza Debayle', 52, 1925, 1980, 1967, 1979),
(76, 'Daniel Ortega', 52, 1945, NULL, 1979, NULL),
(77, 'Manuel Noriega', 53, 1934, 2017, 1983, 1989),
(78, 'Hugo Chávez', 54, 1954, 2013, 1999, 2013),
(79, 'Nicolás Maduro', 54, 1962, NULL, 2013, NULL),
(80, 'Alfredo Stroessner', 55, 1912, 2006, 1954, 1989),
(81, 'Augusto Pinochet', 56, 1915, 2006, 1973, 1990),
(82, 'Jorge Rafael Videla', 57, 1925, 2013, 1976, 1981),
(83, 'Juan Perón', 57, 1895, 1974, 1946, 1955),
(84, 'Getúlio Vargas', 58, 1882, 1954, 1930, 1945),
(85, 'René Barrientos', 59, 1919, 1969, 1964, 1969),
(86, 'Hugo Banzer', 59, 1926, 2002, 1971, 1978),
(87, 'Alberto Fujimori', 60, 1938, NULL, 1990, 2000),
(88, 'Carlos Castillo Armas', 61, 1914, 1957, 1954, 1957);

/*## Some Queries I Wrote

Here are some example queries I wrote to analyze the data:

1. This query shows me who's still in power: */

SELECT d.name, c.name as country, d.rule_start
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.rule_end IS NULL
ORDER BY d.rule_start;

/*2. I wrote this to see dictators by region: */
SELECT c.region, d.name, c.name as country, d.rule_start, d.rule_end
FROM dictators d
JOIN countries c ON d.country_id = c.id
ORDER BY c.region, d.rule_start;


/*3. This helped me find the long-ruling dictators: */

SELECT d.name, c.name as country, 
       d.rule_start, d.rule_end
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.rule_end IS NOT NULL 
AND (d.rule_end - d.rule_start) > 20
ORDER BY (d.rule_end - d.rule_start) DESC;

/*4. I used this to find dictators who ruled for less than 10 years: */

SELECT d.name, c.name as country, 
       d.rule_start, d.rule_end
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.rule_end IS NOT NULL
AND (d.rule_end - d.rule_start) < 10
ORDER BY (d.rule_end - d.rule_start) ASC;

/*5. This query helped me find dictators who died in power: */

SELECT d.name, c.name as country, d.death_year
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.death_year IS NOT NULL
AND d.rule_end IS NULL
ORDER BY d.death_year;

/*6. I used this to find dictators who came to power after 2000: */

SELECT d.name, c.name as country, d.rule_start
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.rule_start > 2000
ORDER BY d.rule_start;

/*7. I used this to find dictators who ruled in the 21st century: */ 
/*(I think the most important query)*/

SELECT d.name, c.name as country, d.rule_start
FROM dictators d
JOIN countries c ON d.country_id = c.id
WHERE d.rule_start >= 2000
ORDER BY d.rule_start;

