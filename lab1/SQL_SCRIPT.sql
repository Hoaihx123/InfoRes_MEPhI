CREATE TABLE specialities (
    id INTEGER PRIMARY KEY,
    name VARCHAR(102) NOT NULL,
    code VARCHAR(8) NOT NULL,
	level VARCHAR(12) NOT NULL CHECK (level IN ('Специалитет', 'Магистратура', 'Бакалавриат', 'Аспирантура')),
    level_id INTEGER NOT NULL CHECK (level_id BETWEEN 0 AND 3),
    generation VARCHAR(6) NOT NULL CHECK (generation IN ('ФГОС3+', 'ГОС2')),
    generation_id INTEGER NOT NULL CHECK (generation_id IN (0, 1)),
    type VARCHAR(13) NOT NULL CHECK (type IN ('специальность', 'направление')),
    type_id INTEGER NOT NULL CHECK (type_id IN (0, 1))
);

CREATE SEQUENCE specialities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
	
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Технологии разделения изотопов и ядерное топливо', '14.05.03', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 ); 
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные физика и технологии', '14.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Юриспруденция', '030501', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика', '230401', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность', '090900', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Конструкторско-технологическое обеспечение машиностроительных производств', '151900', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика кинетических явлений', '140303', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная информатика', '09.03.03', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '01.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Бизнес-информатика', '38.04.05', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационные системы и технологии', '09.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Применение и эксплуатация автоматизированных систем специального назначения', '09.05.01', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Безопасность и нераспространение ядерных материалов', '140309', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Техническая физика', '140400', 'Магистратура', 2, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные физика и технологии', '140800', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '010501', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Атомные станции: проектирование, эксплуатация и инжиниринг', '14.05.02', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Юриспруденция', '40.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '38.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная информатика (по областям)', '080801', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Материаловедение и технологии материалов', '22.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Юриспруденция', '40.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационно-аналитические системы безопасности', '10.05.04', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Материаловедение и технологии материалов', '150100', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника и автоматика физических установок', '14.05.04', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Международные отношения', '41.03.05', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Технологии разделения изотопов и ядерное топливо', '141405', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Безопасность информационных технологий в правоохранительной сфере', '10.05.05', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '080100', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная информатика', '230700', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные физика и технологии', '14.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информатика и вычислительная техника', '09.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Бизнес-информатика', '38.03.05', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Системный анализ и управление', '27.03.03', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность', '090900', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерная энергетика и теплофизика', '14.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информатика и вычислительная техника', '230100', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Вычислительные машины, комплексы, системы и сети', '230101', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '010400', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика', '01.03.04', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Комплексная защита объектов информатизации', '090104', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '010400', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Правовое обеспечение национальной безопасности', '40.05.01', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика', '03.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность', '10.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика металлов', '150702', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика пучков заряженных частиц и ускорительная техника', '140304', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Медицинская физика', '010707', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '01.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность', '10.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Комплексное обеспечение информационной безопасности автоматизированных систем', '090105', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладные математика и физика', '03.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Материаловедение и технологии материалов', '22.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная информатика', '09.04.03', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Международные отношения', '030701', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные реакторы и материалы', '14.05.01', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '010500', 'Бакалавриат', 0, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладные математика и физика', '010600', 'Бакалавриат', 0, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информатика и вычислительная техника', '09.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Программная инженерия', '09.04.04', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика и информатика', '010500', 'Магистратура', 2, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика', '010700', 'Бакалавриат', 0, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент', '080500', 'Бакалавриат', 0, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика', '011200', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность автоматизированных систем', '10.05.03', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладные математика и физика', '010900', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Материаловедение и технологии материалов', '150100', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Математические методы в экономике', '080116', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика', '011200', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика и управление на предприятии (по отраслям)', '080502', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Международные отношения', '41.04.05', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика', '03.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладные математика и физика', '010600', 'Магистратура', 2, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника и микроэлектроника', '210100', 'Магистратура', 2, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент', '38.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Финансы и кредит', '080105', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информатика и вычислительная техника', '230100', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '080100', 'Бакалавриат', 0, 'ГОС2', 0, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика конденсированного состояния вещества', '140301', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные реакторы и энергетические установки', '140305', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность автоматизированных систем', '090303', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика атомного ядра и частиц', '140302', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент', '38.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационные системы и технологии', '09.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Бухгалтерский учет, анализ и аудит', '080109', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Программная инженерия', '231000', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладные математика и физика', '03.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '38.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные физика и технологии', '140800', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Конструкторско-технологическое обеспечение машиностроительных производств', '15.04.05', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Автоматизированные системы обработки информации и управления', '230102', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Прикладная математика', '01.04.04', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономическая безопасность', '38.05.01', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Радиационная безопасность человека и окружающей среды', '140307', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '080100', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент', '080200', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Программная инженерия', '09.03.04', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Системный анализ и управление', '27.04.03', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент', '080200', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерная энергетика и теплофизика', '140700', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника и автоматика физических установок', '140306', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Дифференциальные уравнения', '01.01.02', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Приборы и методы экспериментальной физики', '01.04.01', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика и астрономия', '03.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Теоретическая физика', '01.04.02', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика конденсированного состояния', '01.04.07', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика плазмы', '01.04.08', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электрофизика, электрофизические установки', '01.04.13', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Теплофизика и теоретическая теплотехника', '01.04.14', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электро- и теплотехника', '13.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика атомного ядра и элементарных частиц', '01.04.16', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика пучков заряженных частиц и ускорительная техника', '01.04.20', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Лазерная физика', '01.04.21', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физика высоких энергий', '01.04.23', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационно-измерительные и управляющие системы (по отраслям)', '05.11.16', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Управление в технических системах', '27.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Системный анализ, управление и обработка информации (по отраслям)', '05.13.01', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информатика и вычислительная техника', '09.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Элементы и устройства вычислительной техники и систем управления', '05.13.05', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Автоматизация и управление технологическими процессами и производствами (по отраслям)', '05.13.06', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Математическое и программное обеспечение вычислительных машин, комплексов и компьютерных сетей', '05.13.11', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Математическое моделирование, численные методы и комплексы программ', '05.13.18', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Компьютерные и информационные науки ', '02.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Методы и системы защиты информации, информационная безопасность', '05.13.19', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Информационная безопасность', '10.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерные энергетические установки, включая проектирование, эксплуатацию и вывод из эксплуатации', '05.14.03', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерная, тепловая и возобновляемая энергетика и сопутствующие технологии', '14.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Твердотельная электроника, радиоэлектронные компоненты, микро- и наноэлектроника на квантовых эффектах', '05.27.01', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника, радиотехника и системы связи', '11.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика и управление народным хозяйством (по отраслям и сферам деятельности)', '08.00.05', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономика', '38.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Бухгалтерский учет, статистика', '08.00.12', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Математические и инструментальные методы экономики', '08.00.13', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Административное право, финансовое право, информационное право', '12.00.14', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Юриспруденция', '40.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Материаловедение', '05.16.09', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Химическая технология', '18.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Порошковая металлургия и композиционные материалы', '05.16.06', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Технологии материалов', '22.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Лазерная техника и лазерные технологии', '12.03.05', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Математика и механика', '01.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Юриспруденция', '030900', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Компьютерные и информаионные науки', '02.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Психология', '37.04.01', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Лазерная техника и лазерные технологии', '12.04.05', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Физико-технические науки и технологии', '16.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экономическая безопасность', '080101', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Химические науки', '04.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Фотоника, приборостроение, оптические и биотехнические системы и технологии', '12.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Машиностроение', '15.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Психологические науки', '37.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Биологические науки', '06.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника и наноэлектроника', '11.04.04', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Электроника и наноэлектроника', '11.03.04', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Авиационная и ракетно-космическая техника', '24.06.01', 'Аспирантура', 3, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Биология', '06.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Лечебное дело', '31.05.01', 'Специалитет', 1, 'ФГОС3+', 1, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Менеджмент организации', '080507', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Приборостроение', '12.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Химия', '04.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Химия, физика и механика материалов', '04.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Экология и природопользование', '05.03.06', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Атомные электрические станции и установки', '140404', 'Специалитет', 1, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Ядерная энергетика и теплофизика', '14.03.01', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Технология редких, рассеянных и радиоактивных элементов', '05.17.02', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Технология электрохимических процессов и защита от коррозии', '05.17.03', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Химическая технология топлива и высокоэнергетических веществ', '05.17.07', 'Аспирантура', 3, 'ГОС2', 0, 'специальность', 1 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Фотоника и оптоинформатика', '12.04.03', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Биотехнические системы и технологии', '12.03.04', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Фотоника и оптоинформатика', '12.03.03', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Высокотехнологические плазменные и энергетические установки', '16.03.02', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Высокотехнологические плазменные и энергетические установки', '16.04.02', 'Магистратура', 2, 'ФГОС3+', 1, 'направление', 0 );
INSERT INTO specialities VALUES(nextval('specialities_id_seq'), 'Мехатроника и робототехника', '15.03.06', 'Бакалавриат', 0, 'ФГОС3+', 1, 'направление', 0 ); 

SELECT * FROM specialities