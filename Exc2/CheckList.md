# Exc2

## Проанализируйте схему и описание системы
- Cервисы для продаж
  - витрина продаж
    - фронтенд приложение
    - причина:
     - XSS, CSRF, неограниченное время действия токенов авторизации
  - система для управления клиентскими данными
    - бекенд приложение
    - есть конфиденциальные данные покупателей
    - причина:
      - sql инъекции, доступность бд из вне контура, нет шифрования данных, нет авторизации у приложения
      - нет TLS, нет защиты данных
  - приложение для управления данными недвижимости
    - бекенд приложение
    - нет конфиденциальных данных
    - причина:
      - sql инъекции, доступность бд из вне контура, нет авторизации у приложения при работе сервер-сервер, нет TLS
  - приложение для онлайн-тура
    - бекенд приложение
    - хранятся данные по проведению онлайн туров
  - приложение для онлайн-сделки
    - бекенд приложение
    - есть конфиденциальные данные о сделках
    - причина:
      - нет шифрования данных, sql инъекции, доступность бд из вне контура, отсутствие авторизации
      - нет логирования доступа к данным пользователями, нет TLS в работе сервер-сервер / сервер-клиент
- Сервисы ЖКУ
  - витрина
    - мобильные приложение
    - причина:
      - перехват авторизации конкретного пользователя и последующие действия от его имени
  - CRM для собственников 
    - бекенд приложение
    - хранятся персональные данные собственников
    - причина:
      - sql-инъекции, доступность базы данных извне, нет шифрования данных, нет ограничений на доступ к данным, нет TLS
  - сервис для предоставления услуг
    - бекенд приложение
    - хранятся данные о предоставленных услугах, истории оплат и информации об умных устройствах для управления «Умным домом»
    - причина:
      - sql-инъекции, доступность базы данных извне корпоративного контура, отсутствие шифрования данных 
      - недостаточное разграничение прав доступа, нет логирования доступа и изменения данных, нет TLS
- Данные
  - хранилище данных
    - центральное хранилище данных компании, содержит все данные
    - причина:
      - нет шифрования данных, недостаточный контроль доступа к данным, нет мониторинга доступа и логирования
  - BI и отчёты
    - бизнес-аналитикиа и отчётность
    - причина:
      - недостаточное разграничение прав доступа, отсутствие мониторинга операций
- Финансы
  - финансовый учёт
    - бекенд приложение
    - хранятся финансовая информация клиентов и собственников
    - причина:
      - sql-инъекции, доступность базы данных извне, нет шифрования данных, недостаточное разграничение прав, нет мониторинга и логирования финансовых транзакций

## Выберите, какие разделы включить в проверочный лист, исходя из проблем и приоритетов компании
- Управление доступом
- Безопасность данных
- Защита инфроструктуры
- Управление инцидентами
- Мониторинг изменений 
- Аудит
- Локальная инфраструктура
- Мобильные устройства и удалённый доступ