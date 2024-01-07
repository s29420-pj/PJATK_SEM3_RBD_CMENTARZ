# PJATK_SEM3_RBD_CMENTARZ
W celu efektywnego zarządzania cmentarzem, niezbędna jest kompleksowa baza danych, która obejmuje kluczowe tabele dla miejsc
pochówku, pracowników, zmarłych, opłat cmentarnych i historii grobów. Priorytetem jest umożliwienie przypisania kilku
nieboszczyków do jednego grobu, jednocześnie zapewniając możliwość ich jednoznacznego zidentyfikowania.

Chcemy zastąpić codzienny papierowy rejestr pracowników elektronicznym systemem, co ułatwi bieżące monitorowanie ich
aktywności i skonsoliduje dane w jednym miejscu. W tym kontekście, kluczowe jest utrzymanie spójności informacji, tak aby każdy
pracownik był jednoznacznie zidentyfikowany w systemie.

Dodatkowo, istotną funkcją bazy danych będzie śledzenie historii płatności związanych z grobami oraz ewidencja czynności
wykonywanych przy poszczególnych grobach. Dzięki temu możliwe będzie precyzyjne monitorowanie wszelkich operacji związanych z
zarządzaniem grobami, co wpłynie pozytywnie na przejrzystość finansową i efektywność działań.

Podsumowując, nasza baza danych będzie skupiała się na integracji informacji o grobach, pracownikach, zmarłych, opłatach
cmentarnych oraz historii grobów. Zapewnienie elastyczności i jednoczesne zabezpieczenie danych, to kluczowe elementy, które
umożliwią nam efektywne zarządzanie cmentarzem, eliminując potrzebę manualnej pracy i poprawiając ogólną jakość obsługi.
1. Osoby i Groby:
• Rejestracja informacji o zmarłych i ich przypisywanie do konkretnych grobów na jednym, wybranym cmentarzu.
• Możliwość przeglądania historii grobów, zawierającej informacje o ceremoniach pogrzebowych i innych istotnych
wydarzeniach na danym cmentarzu.
2. Płatności Cmentarne:
• Monitorowanie opłat cmentarnych związanych z konkretnymi grobami na wybranym cmentarzu.
• Umożliwienie śledzenia historii płatności i zarządzania finansami związanych z utrzymaniem tego konkretnego cmentarza.
3. Pracownicy Cmentarza:
• Rejestracja pracowników cmentarza i ich przypisywanie do obsługiwanych grobów na jednym, wybranym cmentarzu.
• Zapewnienie funkcjonalności do zarządzania zadaniami pracowników i ich dostępem do konkretnych obszarów tego
konkretnego cmentarza.

Poniżej znajduje się szczegółowy opis encji i ich relacji w projekcie tej bazy danych:
1. Encja „GROB” zawiera numer grobu, który ułatwia odnalezienie konkretnego miejsca pochówku. Jest to ważne do zarządzania
dostępnością miejsc i prawidłowej lokalizacji grobów.
Atrybuty:
• id (klucz główny) – unikalny identyfikator grobu, typ int
• numer_grobu – numer grobu w postaci SEKTOR/RZĄD/NR, typ varchar(10)
2.. Encja „HISTORIA GROBU” służy do rejestrowania historii czynności wykonywanych przy grobie. Zawiera datę, opis czynności oraz
numer grobu.
Atrybuty:
• id (klucz główny) – unikalny identyfikator czynności, typ int
• Opis – opis czynności wykonywanej przy danym grobie, typ varchar(100)
• grob_id (klucz obcy) – powiązanie z encją GROB dla określenia, gdzie została wykonana czynność, typ int
3. Encja „NIEBOSZCZYK” przechowuje informacje odnośnie osób zmarłych. Zawiera szczegółowe dane takie jak: imię, nazwisko, data
urodzenia i data śmierci oraz umożliwia dodanie komentarza na nagrobek.
Atrybuty:
• id (klucz główny) – unikalny identyfikator osoby zmarłej, typ int
• imie – imię zmarłej osoby, typ varchar(20)
• nazwisko – nazwisko zmarłej osoby, typ varchar(20)
• data_urodzenia – data urodzenia zmarłej osoby, typ date
• data_smierci – data śmierci zmarłej osoby, typ date
4. Encja „PRACOWNICY” zawiera informacje o pracownikach cmentarza: imię, nazwisko, mail, stanowisko i numer telefonu. Dzięki
temu łatwiej zarządzać personelem oraz przypisywać im konkretne zadania i obowiązki.
Atrybuty:
• id (klucz główny) – unikalny identyfikator pracownika, typ int
• imie – imię pracownika, typ varchar(20)
• nazwisko – nazwisko pracownika, typ varchar(20)
• numer_tel – numer telefonu pracownika w formacie XXXXXXXXX, typ char(9)
5. Encja "OPLATY_CMENTARNE" przechowuje informacje dotyczące opłat cmentarnych związanych z konkretnym grobem na
cmentarzu. Jest to kluczowy element zarządzania finansami związanymi z utrzymaniem cmentarza.
Atrybuty:
• id (klucz główny): Unikalny identyfikator transakcji opłaty cmentarnej, typ int
• data_transakcji: Data przeprowadzenia transakcji opłaty, typ date
• kwota: Kwota opłaty cmentarnej, typ float
• rodzaj_oplaty: Określa rodzaj opłaty, np. konserwację grobu itp. Typ varchar(20)
• gorb_id(klucz obcy): Powiązanie z encją "Grob" w celu określenia grobu, do którego odnosi się opłata, typ int
6. Encja “N_G” pośredniczącą między osobami zmarłymi a grobami na cmentarzu. Przechowuje informacje o przypisaniu osoby zmarłej
do konkretnego grobu, co umożliwia skuteczne śledzenie miejsc pochówku. Poniżej znajdują się atrybuty tej encji:
• id(klucz główny): Unikalny identyfikator przypisania osoby zmarłej do grobu.
• nieboszczyk_id(klucz obcy): Powiązanie z encją "NIEBOSZCZYK" w celu określenia osoby zmarłej.
• grob_id (klucz obcy): Powiązanie z encją "Grob" w celu określenia konkretnego grobu.
7. Encja “P_G” stanowi połączenie między pracownikami cmentarza a grobami. Przechowuje informacje na temat przypisania
pracownika do konkretnego grobu na cmentarzu, umożliwiając skuteczne zarządzanie obowiązkami pracowników w zakresie
pielęgnacji i konserwacji grobów. Poniżej znajdują się atrybuty tej encji:
• id(klucz główny): Unikalny identyfikator przypisania pracownika do grobu.
• pracownik_id(klucz obcy): Powiązanie z encją "Pracownicy" w celu określenia pracownika odpowiedzialnego za grob.
• grob_id(klucz obcy): Powiązanie z encją "Grob" w celu określenia konkretnego grobu.
