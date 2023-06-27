﻿#language: ru

@tree

Функционал: Проверка заполнения полей

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения полей 
*Проверка заполнения полей Партнер и Соглашение
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'     |
		| '9'   | 'Торговая точка 2' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Когда открылось окно 'Заказ покупателя (создание) *'
	И я нажимаю на кнопку с именем 'FormWrite'
	И я запоминаю значение поля "Номер" как "$Number$"
	Тогда элемент формы с именем "Partner" стал равен 'Торговая точка 2'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
	Когда открылось окно 'Заказ покупателя * от *'
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Заказ покупателя * от *' в течение 20 секунд
	Тогда открылось окно 'Заказы покупателей'
	И в таблице "List" я перехожу к строке:
		| 'Автор' | 'Номер'    | 'Партнер'          |
		| 'CI'    | '$Number$' | 'Торговая точка 2' |
	И в таблице "List" я выбираю текущую строку
	Тогда элемент формы с именем "Partner" стал равен 'Торговая точка 2'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
	И я закрываю все окна клиентского приложения		
*Проверка блокировки поля партнер
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю на кнопку с именем 'FormWrite'
	Тогда элемент формы с именем "Partner" стал равен ''	
	И элемент формы с именем "LegalName" присутствует на форме
	И элемент формы с именем "LegalName" не доступен
	И я закрываю все окна клиентского приложения
	
			


