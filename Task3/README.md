# Разработка технологического радара и роадмапа изменений

## Технологический радар "Будущее 2.0"

[Технологический радар "Будущее 2.0"](https://radar.thoughtworks.com/?documentId=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1PAEpQNULwIasqae653Q4ho89zLhyEPryqA5puFztOoc)

[Файл для построения](https://docs.google.com/spreadsheets/d/1PAEpQNULwIasqae653Q4ho89zLhyEPryqA5puFztOoc)

### Techniques
**Adopt**
1. **Domain-Driven Design** - независимое развитие доменов, четкие границы ответственности, интеграция новых бизнесов
2. **Data Mesh** - масштабирование аналитики, децентрализация данных, Self-Service Portal
3. **Event-Driven Architecture** - асинхронная интеграция доменов, Real-time обработка событий, Loose coupling между системами
4. **Microservices** - независимые deployments, масштабирование по доменам, изоляция сбоев
5. **Infrastructure as Code** - автоматизация развертывания, reproducible инфраструктура, облачная миграция

**Trial**
6. **Event Sourcing** - audit trail для финансовых транзакций, compliance требования, история изменений
7. **DataOps** - CI/CD для данных, качество данных, автоматизация ETL
8. **MLOps** - автоматизация ML pipeline, мониторинг моделей, A/B тестирование моделей
9. **Serverless** - Event-driven функции, снижение затрат на compute, auto-scaling

**Caution**
10. **Monorepo** - меняем на множественные

### Platforms
**Adopt**
11. **AWS / Azure / GCP** - _Бизнес-сценарии:_ Облачная инфраструктура, Auto-scaling, Managed services, Снижение затрат на 30%
12. **S3 / Azure Data Lake** - _Бизнес-сценарии:_ Data Lake для сырых данных, Дешевое хранение, Интеграция с аналитическими сервисами
13. **Confluent Cloud / Amazon MSK** - _Бизнес-сценарии:_ Managed Kafka, Event streaming, Снижение операционной нагрузки
14. **Amazon EKS / Azure AKS** - _Бизнес-сценарии:_ Managed Kubernetes, Микросервисы, Container orchestration
15. **Azure AD / AWS IAM** - _Бизнес-сценарии:_ Identity management, RBAC, SSO
16. **GitHub / GitLab** - _Бизнес-сценарии:_ Version control, CI/CD, Code review

**Caution**
17. **On-Premise Infrastructure** - _Бизнес-сценарии:_ Высокие затраты на поддержку, ограниченное масштабирование

### Tools
**Adopt**
18. **Apache Kafka** - _Бизнес-сценарии:_ Event streaming между доменами, Real-time analytics, CDC; _Обоснование:_ Industry standard для event streaming, масштабируемый, надежный
19. **Debezium** - _Бизнес-сценарии:_ Репликация данных в Data Lake, Near real-time аналитика; _Обоснование:_ Open-source CDC, интеграция с Kafka, поддержка PostgreSQL
20. **Apache Airflow** - _Бизнес-сценарии:_ Оркестрация ETL/ELT, Планирование задач, Мониторинг пайплайнов; _Обоснование:_ Стандарт де-факто для оркестрации данных, богатая экосистема
21. **dbt** - _Бизнес-сценарии:_ Трансформация данных, Data modeling, Тестирование данных; _Обоснование:_ SQL-based, version control, тестирование качества
22. **Snowflake** - _Бизнес-сценарии:_ Cloud DWH, Аналитические запросы, Масштабирование; _Обоснование:_ Лучшая производительность для аналитики, auto-scaling, separation of storage/compute
23. **PostgreSQL** - _Бизнес-сценарии:_ Операционные БД доменов, Транзакционные данные; _Обоснование:_ Open-source, надежный, поддержка JSON, хорошая производительность
24. **MLflow** - _Бизнес-сценарии:_ Версионирование ML-моделей, Эксперименты, Model registry; _Обоснование:_ Open-source, стандарт для MLOps, интеграция с Python
25. **Terraform** - _Бизнес-сценарии:_ Infrastructure as Code, Облачная инфраструктура, Multi-cloud; _Обоснование:_ Industry standard для IaC, декларативный, state management
26. **Kubernetes** - _Бизнес-сценарии:_ Оркестрация контейнеров, Микросервисы, Auto-scaling; _Обоснование:_ De-facto standard для container orchestration
27. **Docker** - _Бизнес-сценарии:_ Контейнеризация, Consistent environments, CI/CD; _Обоснование:_ Стандарт для контейнеризации
28. **AWS Glue / Unity Catalog** - _Бизнес-сценарии:_ Data Catalog, Метаданные, Data discovery; _Обоснование:_ Централизованный каталог данных, data lineage, governance
29. **Prometheus + Grafana** - _Бизнес-сценарии:_ Мониторинг, Алертинг, Метрики; _Обоснование:_ Open-source, стандарт для мониторинга, rich ecosystem
30. **Kong / AWS API Gateway** - _Бизнес-сценарии:_ API Management, Аутентификация, Rate limiting; _Обоснование:_ Централизованное управление API, масштабируемый

**Trial**
31. **Feast / Tecton** - _Бизнес-сценарии: _Feature Store для ML, Управление фичами, Serving фич; _Обоснование:_ Централизованное управление фичами, online/offline store
32. **Great Expectations** - _Бизнес-сценарии: Data quality, Валидация данных, Profiling; _Обоснование:_ Автоматизация проверок качества данных
33. **ELK Stack** - _Бизнес-сценарии:_ Централизованные логи, Поиск по логам, Troubleshooting; _Обоснование:_ Централизованное логирование, мощный поиск
34. **ArgoCD** - _Бизнес-сценарии:_ GitOps для Kubernetes, Declarative deployments, Rollbacks; _Обоснование:_ Автоматизация деплоев в K8s, git as source of truth

**Caution**
35. **MS SQL Server 2008** - Бизнес-сценарии:_ хранение данных; _Обоснование:_ нет поддержки с 2019, уязвимости безопасности, не масштабируется, заменяем на Snowflake / Azure Synapse
36. **PowerBuilder** - Бизнес-сценарии:_ старый ui для операторов; _Обоснование:_ устаревший UI, низкая производительность, нет мобильности, меняем на React / Vue.js веб-приложения
37. **Apache Camel** - Бизнес-сценарии:_ маршрутизация и трансформации сообщений между системами. Обладает высокой сложностью поддержки и слабой масштабируемостью в современной cloud-native архитектуре. Используем Camel только для поддержки легаси до вывода из эксплуатации, заменяем на Apache Kafka и переходим на Event-Driven Architecture

### Languages & Frameworks
**Adopt**
38. **Java + Spring Boot** - _Бизнес-сценарии:_ Healthcare Domain микросервисы, Corporate Domain, Enterprise-grade приложения
39. **Golang** - _Бизнес-сценарии:_ Fintech микросервисы, High-performance сервисы, Low latency приложения
40. **Python** - _Бизнес-сценарии:_ AI/ML сервисы, Data engineering, ETL скрипты
41. **React** - _Бизнес-сценарии:_ Self-Service Portal, Operator Interface, Современные веб-приложения
42. **Vue.js** - _Бизнес-сценарии:_ Self-Service Portal, Operator Interface, Современные веб-приложения
43. **TypeScript** - _Бизнес-сценарии:_ Frontend разработка, Type safety, Better DX
44. **SQL** - _Бизнес-сценарии:_ Запросы к данным, dbt трансформации, Аналитика

**Trial**
45. **Node.js** - _Бизнес-сценарии:_ BFF (Backend for Frontend), Real-time приложения

**Caution**
46. **PowerBuilder** - _Бизнес-сценарии:_ устаревший UI, вывод из эксплуатации; _Обоснование:_ Устаревший, низкая производительность;

## Роадмап изменений (12 месяцев)

### Фаза 1: Критические основы (Месяцы 1-3)

#### Месяц 1: Планирование и подготовка

**Цели**:
- Утверждение архитектурного решения
- Формирование команд
- Подготовка облачной инфраструктуры

**Проекты**:

1. **Облачная инфраструктура (Foundation)**
    - **Описание**: Создание базовой облачной инфраструктуры в AWS/Azure
    - **Технологии**: AWS/Azure, Terraform, VPC, IAM
    - **Команда**: Cloud Engineers (3 FTE), Network Engineer (1 FTE)
    - **Ресурсы**: $20,000 budget для облачной инфраструктуры
    - **Результаты**:
        - VPC и сети настроены
        - IAM роли и политики созданы
        - S3/Azure Storage для Data Lake
        - Мониторинг (CloudWatch/Azure Monitor)
    - **Бизнес-ценность**: Фундамент для миграции в облако, обеспечение безопасности

2. **Формирование доменных команд**
    - **Описание**: Создание автономных команд по доменам
    - **Команды**:
        - Healthcare Team (5 чел): Java developers, QA, PO
        - Fintech Team (6 чел): Golang/Java developers, Security, QA, PO
        - AI/ML Team (4 чел): ML Engineers, Data Scientists
        - Platform Team (4 чел): DevOps, SRE, Cloud Architects
    - **Результаты**:
        - Команды сформированы
        - Зоны ответственности определены
        - Обучение начато
    - **Бизнес-ценность**: Параллельная разработка, ускорение time-to-market

#### Месяц 2: Миграция DWH и выделение Fintech Domain

**Цели**:
- Устранить критический риск (SQL Server 2008)
- Доказать концепцию доменной архитектуры

**Проекты**:

3. **Миграция DWH на Snowflake (MVP)**
    - **Описание**: Миграция критических данных с SQL Server 2008 на Snowflake
    - **Технологии**: Snowflake, AWS DMS, Terraform
    - **Команда**: Data Engineers (3 FTE), DBA (2 FTE)
    - **Бюджет**: $30,000 (Snowflake license + migration tools)
    - **Этапы**:
        1. Анализ схемы данных SQL Server
        2. Проектирование схемы в Snowflake
        3. Миграция данных (AWS DMS)
        4. Параллельная работа SQL Server + Snowflake
        5. Переключение отчетов на Snowflake
    - **Результаты**:
        - Финансовые данные мигрированы
        - Отчеты работают на Snowflake
        - SQL Server 2008 в read-only режиме
    - **Метрики**:
        - Время построения отчетов: 5-10 минут
        - Uptime: 99.5%
    - **Бизнес-ценность**:
        - Устранение риска безопасности
        - Compliance с требованиями регуляторов
        - Ускорение аналитики

4. **Выделение Fintech Domain**
    - **Описание**: Создание первого автономного домена
    - **Технологии**: Golang, PostgreSQL, Docker, Kubernetes
    - **Команда**: Fintech Team (6 FTE)
    - **Этапы**:
        1. Создание Fintech PostgreSQL БД
        2. Миграция финансовых данных из DWH
        3. Разработка Fintech API (REST)
        4. Разработка микросервисов (Account, Credit, Payment)
        5. Deployment в Kubernetes
    - **Результаты**:
        - Fintech API работает
        - Микросервисы развернуты
        - Независимые deployments
    - **Метрики**:
        - API latency: < 100ms (p95)
        - Uptime: 99.9%
        - Deployment frequency: 3-5 раз/неделю
    - **Бизнес-ценность**:
        - Независимое развитие финтех-направления
        - Быстрый вывод новых продуктов

#### Месяц 3: Event Streaming и Data Lake

**Цели**:
- Создать интеграционную шину (Kafka)
- Начать репликацию данных в Data Lake

**Проекты**:

5. **Apache Kafka как Event Bus**
    - **Описание**: Развертывание Kafka для event-driven архитектуры
    - **Технологии**: Kafka (Confluent Cloud / MSK), Schema Registry
    - **Команда**: Platform Team (3 FTE)
    - **Бюджет**: $5,000/месяц (Confluent Cloud)
    - **Этапы**:
        1. Развертывание Kafka кластера
        2. Настройка topics
        3. Интеграция Fintech → Kafka
        4. Интеграция Healthcare → Kafka
        5. Мониторинг и алертинг
    - **Результаты**:
        - Kafka кластер работает
        - 5+ topics созданы
        - Events flowing between domains
    - **Метрики**:
        - Event latency: < 500ms
        - Throughput: 10,000+ events/sec
    - **Бизнес-ценность**:
        - Loose coupling между доменами
        - Real-time интеграция

6. **Data Lake (S3) + CDC**
    - **Описание**: Создание Data Lake для сырых данных
    - **Технологии**: S3, Debezium, Kafka Connect
    - **Команда**: Data Engineers (3 FTE)
    - **Этапы**:
        1. Создание S3 buckets (raw, curated, analytics)
        2. Настройка Debezium для CDC
        3. Финтех DB → Debezium → Kafka → S3
        4. Data partitioning и lifecycle policies
    - **Результаты**:
        - Data Lake работает
        - CDC из Fintech DB
        - Данные в S3 (Parquet формат)
    - **Бизнес-ценность**:
        - Централизованное хранение данных
        - Дешевое хранение (S3)
        - Готовность для аналитики

**Итоги Фазы 1**:
- Критические риски устранены (SQL Server 2008)
- Первый домен работает автономно (Fintech)
- Event Bus готов (Kafka)
- Data Lake создан
- Compliance обеспечен

---

### Фаза 2: Доменная архитектура (Месяцы 4-6)

#### Месяц 4: Healthcare Domain

**Цели**:
- Выделить второй ключевой домен
- Изолировать медицинские данные

**Проекты**:

7. **Выделение Healthcare Domain**
    - **Описание**: Создание медицинского домена с изоляцией данных
    - **Технологии**: Java, Spring Boot, PostgreSQL, Kubernetes
    - **Команда**: Healthcare Team (5 FTE)
    - **Этапы**:
        1. Создание Healthcare PostgreSQL БД
        2. Миграция данных пациентов (без медкарт!)
        3. Разработка Healthcare API
        4. Микросервисы (Patient, Appointment, Schedule)
        5. Интеграция с Kafka
    - **Результаты**:
        - Healthcare API работает
        - Медкарты изолированы (не в аналитике)
        - Events публикуются в Kafka
    - **Метрики**:
        - API latency: < 150ms (p95)
        - Registration time: < 30 секунд
    - **Бизнес-ценность**:
        - Соответствие медицинским требованиям
        - Изоляция чувствительных данных
        - Независимое развитие клиник

8. **Интеграция Healthcare ↔ Fintech**
    - **Описание**: Связать медицинский и финансовый домены
    - **Технологии**: Kafka, REST API
    - **Команда**: Healthcare + Fintech Teams (2 FTE каждая)
    - **Сценарии**:
        - PatientRegistered (Healthcare → Kafka → Fintech)
        - CreditApproved (Fintech → Kafka → Healthcare)
        - GetPatientHistory (Fintech REST → Healthcare)
    - **Результаты**:
        - Автоматическое создание счета при регистрации
        - Обновление статуса оплаты при одобрении кредита
    - **Бизнес-ценность**:
        - Seamless user experience
        - Автоматизация бизнес-процессов

#### Месяц 5: AI/ML Domain + Self-Service Portal (MVP)

**Цели**:
- Создать AI/ML домен
- Запустить MVP портала самообслуживания

**Проекты**:

9. **AI/ML Domain**
    - **Описание**: Создание домена для ML-моделей
    - **Технологии**: Python, FastAPI, MLflow, Feature Store
    - **Команда**: AI/ML Team (4 FTE)
    - **Этапы**:
        1. Настройка MLflow для version control моделей
        2. Развертывание Feature Store (Feast)
        3. ML Model Serving (FastAPI)
        4. Интеграция с Healthcare и Fintech
    - **Модели**:
        - Кредитный скоринг
        - Рекомендации врачей
        - Fraud detection
    - **Результаты**:
        - 3 ML-модели в продакшене
        - API для inference < 500ms
        - MLOps pipeline
    - **Бизнес-ценность**:
        - AI-поддержка решений
        - Автоматизация скоринга

10. **Self-Service Portal (MVP)**
    - **Описание**: Портал самообслуживания для аналитиков
    - **Технологии**: React, TypeScript, Snowflake
    - **Команда**: Frontend (2 FTE), Backend (2 FTE)
    - **Функции MVP**:
        - Список доступных датасетов
        - Конструктор запросов (SQL editor)
        - Готовые дашборды (5 штук)
        - Export в CSV/Excel
    - **Результаты**:
        - 50+ пользователей
        - 20+ запросов в день
        - Удовлетворенность: 7/10
    - **Метрики**:
        - Время построения отчета: < 30 секунд
        - Количество запросов к IT: -70%
    - **Бизнес-ценность**:
        - Self-service аналитика
        - Разгрузка IT-отдела

#### Месяц 6: Corporate Domain + Data Products

**Цели**:
- Завершить основную доменную структуру
- Создать аналитические витрины

**Проекты**:

11. **Corporate Domain**
    - **Описание**: Домен для корпоративных функций
    - **Технологии**: Java, Spring Boot, PostgreSQL
    - **Команда**: Corporate Team (3 FTE)
    - **Сервисы**:
        - HR Service
        - Inventory Management
        - Financial Reporting
    - **Результаты**:
        - Corporate API работает
        - Интеграция с ERP
        - Events в Kafka
    - **Бизнес-ценность**:
        - Централизованное управление ресурсами

12. **Domain Data Products**
    - **Описание**: Создание аналитических витрин по доменам
    - **Технологии**: Snowflake, dbt, Airflow
    - **Команда**: Data Engineers (3 FTE), Analytics Engineers (2 FTE)
    - **Data Products**:
        - Healthcare Analytics (пациенты, записи, клиники)
        - Fintech Analytics (счета, кредиты, транзакции)
        - AI Analytics (метрики моделей, predictions)
        - Corporate Analytics (HR, инвентаризация)
    - **ETL**:
        - S3 (raw) → dbt трансформации → Snowflake (data products)
        - Инкрементальные обновления
        - Data quality checks (Great Expectations)
    - **Результаты**:
        - 4 Data Products готовы
        - Обновление каждые 15 минут
        - Quality checks на месте
    - **Метрики**:
        - Freshness: < 15 минут
        - Quality: 99.5% valid records
    - **Бизнес-ценность**:
        - Быстрая аналитика по доменам
        - Качество данных

**Итоги Фазы 2**:
- 4 домена работают автономно
- Event-driven интеграция
- Self-Service Portal (MVP)
- Domain Data Products готовы
- ML-модели в продакшене

---

### Фаза 3: Оптимизация и масштабирование (Месяцы 7-9)

#### Месяц 7: Data Catalog + Central DWH

**Цели**:
- Создать каталог данных
- Агрегировать метрики для сквозной аналитики

**Проекты**:

13. **Data Catalog**
    - **Описание**: Централизованный каталог всех данных
    - **Технологии**: AWS Glue / Unity Catalog
    - **Команда**: Data Governance Team (2 FTE)
    - **Функции**:
        - Регистрация всех Data Products
        - Метаданные и схемы
        - Data lineage
        - Поиск датасетов
        - Access control
    - **Результаты**:
        - 50+ датасетов зарегистрированы
        - Lineage от источника до витрины
        - Поиск работает
    - **Метрики**:
        - Время поиска датасета: < 10 секунд
        - Adoption: 80% аналитиков
    - **Бизнес-ценность**:
        - Data discovery
        - Прозрачность данных
        - Governance

14. **Central DWH (агрегаты)**
    - **Описание**: Центральное хранилище для сквозной аналитики
    - **Технологии**: Snowflake, dbt
    - **Команда**: Data Engineers (2 FTE)
    - **Данные**:
        - Агрегированные метрики из всех доменов
        - KPI: LTV, CAC, NPS, Revenue, etc.
        - Customer 360 view
    - **Результаты**:
        - Central DWH работает
        - 20+ KPI рассчитываются
        - Customer 360 дашборд
    - **Бизнес-ценность**:
        - Сквозная аналитика
        - Единое представление о клиенте

#### Месяц 8: Новый Operator Interface + Observability

**Цели**:
- Заменить PowerBuilder
- Создать observability платформу

**Проекты**:

15. **Новый Operator Interface**
    - **Описание**: Современный веб-интерфейс для операторов
    - **Технологии**: React, TypeScript, Material-UI
    - **Команда**: Frontend (3 FTE), UX (1 FTE)
    - **Функции**:
        - Регистрация пациентов
        - Запись на прием
        - Поиск пациентов
        - Календарь клиники
        - Мобильная версия
    - **Результаты**:
        - 100+ операторов используют
        - Скорость работы +40%
        - Удовлетворенность растет
    - **Метрики**:
        - Регистрация пациента: 3 минуты → 1 минута
        - Mobile friendly: 100%
    - **Бизнес-ценность**:
        - Производительность операторов
        - Лучший UX

16. **Observability Platform**
    - **Описание**: Мониторинг и логирование всех систем
    - **Технологии**: Prometheus, Grafana, ELK, Jaeger
    - **Команда**: SRE (2 FTE), DevOps (1 FTE)
    - **Компоненты**:
        - Prometheus: метрики (CPU, memory, latency)
        - Grafana: дашборды
        - Elasticsearch: логи
        - Jaeger: distributed tracing
    - **Результаты**:
        - 100+ метрик собираются
        - 50+ дашбордов
        - Алерты настроены
    - **Метрики**:
        - MTTR: 2-4 часа → 15-30 минут
        - Incident detection: < 1 минута
    - **Бизнес-ценность**:
        - Быстрое обнаружение проблем
        - Proactive мониторинг

#### Месяц 9: Стандартизация онбординга + миграция в облако

**Цели**:
- Создать шаблоны для новых доменов
- Завершить миграцию в облако

**Проекты**:

17. **Стандартизация онбординга**
    - **Описание**: Шаблоны и документация для новых партнеров
    - **Команда**: Platform Team (2 FTE), Tech Writers (1 FTE)
    - **Артефакты**:
        - Domain Service Template (Java/Golang)
        - Data Product Template (dbt)
        - Terraform modules
        - Onboarding checklist
        - Developer portal
    - **Результаты**:
        - Templates готовы
        - Документация написана
        - Developer portal работает
    - **Метрики**:
        - Время онбординга: 2-3 месяца → < 2 недель
    - **Бизнес-ценность**:
        - Быстрая интеграция партнеров
        - Масштабирование экосистемы

18. **Полная миграция в облако**
    - **Описание**: Вывод из эксплуатации on-premise инфраструктуры
    - **Команда**: Cloud Team (3 FTE), Migration specialists (2 FTE)
    - **Этапы**:
        - Миграция оставшихся данных
        - Миграция legacy приложений
        - Настройка disaster recovery
        - Тестирование failover
        - Отключение on-premise
    - **Результаты**:
        - 100% в облаке
        - DR протестирован
        - On-premise отключен
    - **Метрики**:
        - Uptime: 99.9%
        - RPO: < 1 час
        - RTO: < 4 часа
        - Затраты: -30%
    - **Бизнес-ценность**:
        - Снижение затрат
        - Масштабируемость
        - Высокая доступность

**Итоги Фазы 3**:
- Data Catalog работает
- Новый UI для операторов
- Full observability
- 100% в облаке
- Онбординг < 2 недель

---

### Фаза 4: Продвинутые возможности (Месяцы 10-12)

#### Месяц 10-11: Self-Service Portal v2 + DataOps

**Цели**:
- Расширить возможности портала
- Автоматизировать data pipeline

**Проекты**:

19. **Self-Service Portal v2.0**
    - **Описание**: Полнофункциональный портал самообслуживания
    - **Команда**: Product Team (5 FTE)
    - **Новые функции**:
        - No-code query builder
        - Saved queries и шаринг
        - Scheduled reports
        - Алерты на данные
        - Data catalog интеграция
        - Collaboration (комментарии)
    - **Результаты**:
        - 200+ активных пользователей
        - 100+ запросов в день
        - Удовлетворенность: 9/10
    - **Метрики**:
        - Adoption rate: 80% всех аналитиков
        - Queries to IT: -90%
    - **Бизнес-ценность**:
        - Полная автономия аналитиков
        - Data-driven culture

20. **DataOps (CI/CD для данных)**
    - **Описание**: Автоматизация data pipelines
    - **Технологии**: dbt, Great Expectations, GitHub Actions
    - **Команда**: Data Engineers (3 FTE)
    - **Практики**:
        - Version control для SQL (dbt)
        - Automated testing (data quality)
        - CI/CD для data pipelines
        - Environment management (dev/staging/prod)
        - Monitoring и alerting
    - **Результаты**:
        - CI/CD для 10+ pipelines
        - Автоматические тесты
        - Rollback механизм
    - **Метрики**:
        - Pipeline failures: 30% → 5%
        - Time to fix: 2 часа → 30 минут
    - **Бизнес-ценность**:
        - Качество данных
        - Надежность pipelines

#### Месяц 12: Вывод legacy DWH + ретроспектива

**Цели**:
- Полностью вывести SQL Server 2008
- Подвести итоги трансформации

**Проекты**:

21. **Вывод из эксплуатации legacy DWH**
    - **Описание**: Финальная миграция и отключение SQL Server
    - **Команда**: Data Engineers (2 FTE), DBA (1 FTE)
    - **Этапы**:
        - Проверка полноты миграции
        - Архивация legacy данных
        - Отключение SQL Server
    - **Результаты**:
        - SQL Server 2008 отключен
        - Legacy данные архивированы
        - 100% на новой архитектуре
    - **Бизнес-ценность**:
        - Нет технического долга
        - Соответствие compliance

22. **Подготовка к интеграции партнеров**
    - **Описание**: Готовность к онбордингу фармы и equipment
    - **Команда**: Platform Team (2 FTE)
    - **Артефакты**:
        - Partner onboarding playbook
        - API documentation
        - Sandbox environment
    - **Результаты**:
        - Готовность к онбордингу партнеров
    - **Бизнес-ценность**:
        - Расширение экосистемы

**Итоги Фазы 4**:
- Self-Service Portal v2
- DataOps внедрен
- Legacy DWH выведен
- Готовность к масштабированию