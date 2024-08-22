﻿--
-- Class Mods - ruRU
--

if not ClassMods then return end
if GetLocale() ~= "ruRU" then return end
local L = LibStub("AceLocale-3.0"):NewLocale("ClassMods", "ruRU")

L["Abbreviate number"] = "Abbreviate number" -- Requires localization
L["activated."] = "активировано."
L["Active"] = "Активный"
L["Active alpha"] = "Прозрачность активной панели"
L["ACTIVEALPHA_DESC"] = "Установите прозрачность тайм панели, при активном таймере (есть таймер для отображения)"
L["Add new timer"] = "Добавить таймер"
L["Add sparkles"] = "Добавить свечение"
L["ADDTIMER_CONFIRM"] = "Создать новый таймер для этой панели ?"
L["ALERTDESC_ENABLE"] = "Включить это предупреждение."
L["ALERTHEALTHPERCENT_DESC"] = "При падении здоровья до этого процента, предупреждение будет запущено"
L["Alerts"] = "Предупреждения"
L["Alert trigger"] = "Сигнал запуска"
L["Alpha change"] = "Прозрачность"
L["Alpha end %"] = "Прозрачность в конце %"
L["ALPHAEND_DESC"] = "Значение прозрачности при завершении таймера"
L["Alpha start %"] = "Прозрачность в начале %"
L["ALPHASTART_DESC"] = "Значение прозрачности при старте таймера"
L["Alternate Resource Bar"] = "Alternate Resource Bar" -- Requires localization
L["ALTRESOURCEBASIC_DESC"] = "Turn on a basic mode instead of using graphics" -- Requires localization
L["ALTRESOURCECOLORON_DESC"] = "Color of square when resource is available" -- Requires localization
L["ALTRESOURCECOLOROOFF_DESC"] = "Color of square when resource is unavailable" -- Requires localization
L["Always"] = "Всегда"
L["Announce End"] = "Announce End" -- Requires localization
L["ANNOUNCEEND_DESC"] = "Announce the end of the spell, for example, an expiring buff." -- Requires localization
L["Announce expiration"] = "Объявлять об окончании"
L["Announcement"] = "Announcement" -- Requires localization
L["ANNOUNCEMENTDESC_ENABLE"] = "Enable this announcement." -- Requires localization
L["Announcements"] = "Announcements" -- Requires localization
L["Announcement trigger"] = "Announcement trigger" -- Requires localization
L["Announce the cast"] = "Объявлять о касте"
L["Any"] = "Кто угодно"
L["Any Arena Enemy"] = "Любой противник на арене"
L["Any Boss"] = "Любой Босс"
L["Any Party Member"] = "Любой член группы"
L["Any Party Pet"] = "Любой питомец члена группы"
L["Any Raid Member"] = "Любой член рейда"
L["Any Raid Pet"] = "Любой питомец члена рейда"
L["Any Spec"] = "Любая специализация"
L["ARENACHANNEL_DESC"] = "Выберите канал для сообщений когда Вы на арене."
L["Arena Enemy 1"] = "Противник на арене №1"
L["Arena Enemy 2"] = "Противник на арене №2"
L["Arena Enemy 3"] = "Противник на арене №3"
L["Arena Enemy 4"] = "Противник на арене №4"
L["Arena Enemy 5"] = "Противник на арене №5"
L["Auto attack bar"] = "Auto attack bar" -- Requires localization
L["Auto attack bar color"] = "Auto attack bar color" -- Requires localization
L["Auto attack timer font"] = "Auto attack timer font" -- Requires localization
L["Auto attack timer offset"] = "Auto attack timer offset" -- Requires localization
L["Auto attack timer text color"] = "Auto attack timer text color" -- Requires localization
L["Automatic"] = "Автоматический"
L["Backdrop"] = "Задний фон"
L["Backdrop color"] = "Цвет заднего фона"
L["Backdrop texture"] = "Текстура заднего фона"
L["Background color"] = "Цвет фона"
L["Bar alpha"] = "Прозрачность панели"
L["Bar backdrop"] = "Фон панели"
L["Bar border"] = "Рамка панели"
L["Bar color"] = "Bar color" -- Requires localization
L["Bar height"] = "Высота панели"
L["Bar settings"] = "Настройки панели"
L["Bar smoothing"] = "Сглаживание панели"
L["Bar width"] = "Ширина панели"
L["Basic mode"] = "Basic mode" -- Requires localization
L["Battleground"] = "Поле боя"
L["Border"] = "Рамка"
L["Border color"] = "Цвет рамки"
L["Border texture"] = "Текстура рамки"
L["Boss 1"] = "Босс 1"
L["Boss 2"] = "Босс 2"
L["Boss 3"] = "Босс 3"
L["Boss 4"] = "Босс 4"
L["Boss 5"] = "Босс 5"
L["Bottom"] = "Снизу"
L["BOTTOM"] = "Снизу"
L["Bottom-right X"] = "X снизу-справа"
L["Bottom-Right X"] = "X снизу-справа"
L["Bottom-right Y"] = "Y снизу-справа"
L["Bottom-Right Y"] = "Y снизу-справа"
L["Buff"] = "Бафф"
L["Build point"] = "Точка заполнения"
L["BUILDPOINT_DESC"] = "Выберите как стационарные таймеры буду заполняться. Например, ЦЕНТР создаст якорь в центре и иконка будет заполняться от центра, слева - заполнение будет производиться слева направо(для горизонтального расположения), и т.д."
L["can not be cast on you when mounted!"] = "Слезь с маунта и будет напул"
L["cast on"] = "на"
L["CENTER"] = "Центр"
L["Change bar color"] = "Сменить цвет"
L["CHANGE HOW THIS BAR FUNCTIONS"] = "Как будет работать эта панель"
L["CHANGE ORDER OF TIMERS"] = "Сменить порядок расположениятаймеров"
L["CHANGEPRIORITYMSG"] = "Использовать кнопки вверх/вниз для семы порядка расположения"
L["CHANGE PRIORITY ORDER OF TIMERS"] = "Изменить приоритет расположения таймеров"
L["CHANGETOITEM_CONFIRM"] = "У вас выбрано Заклинание для отслеживания, вы хотите изменить его на отслеживание Предмета?"
L["CHANGETOSPELL_CONFIRM"] = "У вас выбран Предмет для отслеживания, вы хотите изменить его на отслеживание Заклинания?"
L["Chat Announce"] = "Объявлять в чат"
L["Chat Notification"] = "Сообщение в чат"
L["Check target"] = "Цель"
L["CHECKTARGET_DESC"] = "Выберите цель для проверки наличия этого баффа/дебаффа, кулдауна и т.д."
L["Check type"] = "Тип"
L["CHECKTYPE_DESC"] = "Выберите что таймер должен отслеживать: действие заклинания, кулдаун или внутренний кулдаун."
L["CLASSMODS"] = "|cffabd473ClassMods|r"
L["CLASSMODS_BUILD"] = "Версия "
L["CLASSMODSLOCKED"] = "Элементы заблокированы"
L["CLASSMODSMAIN_DESC"] = [=[Вы можете разблокировать и перемещать элементы ClassMods набрав команду  
"/ClassMods lock".]=]
L["CLASSMODS_PRE"] = "|cffabd473ClassMods:|r "
L["CLASSMODSUNLOCKED"] = "Элементы разблокированы и могут быть премещены, набериет команду '/jsb lock' для блокировки."
L["CLASSMODSUPDATEINTERVAL_DESC"] = "Set the update interval, Lower uses more CPU and increases update frequency." -- Requires localization
L["Click to Cast"] = "Click to Cast" -- Requires localization
L["CLICKTOCASTNOTE"] = "|cffFF4500Note:|r Use Ctrl or Alt + Right-Click to access unit frame menus!" -- Requires localization
L["Click to select a frame to move..."] = "Выберите элемент для перемещения..."
L["Collapse"] = "Свернуть"
L["Color"] = "Цвет"
L["Color off"] = "Color off" -- Requires localization
L["Color of the bar showing auto attack timer."] = "Color of the bar showing auto attack timer." -- Requires localization
L["Color of the text showing auto attack timer."] = "Color of the text showing auto attack timer." -- Requires localization
L["Color of the text showing your current health."] = "Color of the text showing your current health." -- Requires localization
L["Color of the text showing your current resource."] = "Color of the text showing your current resrouce." -- Requires localization
L["Color on"] = "Color on" -- Requires localization
L["Colors"] = "Цвета"
L["Color the backdrop"] = "Цвет заднего фона"
L["Color to change to."] = "Цвет для замены"
L["Color used for the stacks font."] = "Цвет текста стаков"
L["Color used for the time font if set to static"] = "Color used for the time font if set to static." -- Requires localization
L["CONFIRM_NEWALERT"] = "Создать новое предупреждение '%s'?"
L["CONFIRM_NEWANNOUNCEMENT"] = "Create a new announcement named '%s'?" -- Requires localization
L["CONFIRM_NEWINDICATOR"] = "Create a new indicator named '%s'?" -- Requires localization
L["Cooldown"] = "Кулдаун"
L["Cooldowns"] = "Кулдауны"
L["Cooldown Text"] = "Текст таймеров"
L["Create an Alert"] = "Создать предупреждение"
L["Create an Announcement"] = "Create an Announcement" -- Requires localization
L["Create an Indicator"] = "Create an Indicator" -- Requires localization
L["Creature type font"] = "Creature type font"  -- Requires localization
L["Crowd Control"] = "Контроль"
L["Current health number"] = "Current health number" -- Requires localization
L["Current resource number"] = "Current resource number" -- Requires localization
L["Days"] = "Дни"
L["Dead alpha"] = "Прзрачность при смерти"
L["DEADALPHA_DESC"] = "Вы мертвы или призрак"
L["Dead override"] = "Cмерть"
L["Debuff"] = "Дебафф"
L["Delete"] = "Удалить"
L["Delete alert"] = "Удалить предупреждение"
L["DELETEALERT_CONFIRM"] = "Вы точно уверены что хотите удалить это предупреждение?"
L["DELETE ALL CURRENT TIMERS FOR THIS BAR"] = "Удалить все таймеры этой панели"
L["DELETEALLTIMERS_CONFIRM"] = [=[Это действие удалит все таймеры текущей из конфигурации.

Вы уверены?]=]
L["Delete announcement"] = "Delete announcement" -- Requires localization
L["DELETEANNOUNCEMENT_CONFIRM"] = "Are you sure you want to delete this announcement?" -- Requires localization
L["Delete indicator"] = "Delete indicator" -- Requires localization
L["DELETEINDICATOR_CONFIRM"] = "Are you sure you want to delete this indicator?" -- Requires localization
L["Delete timer"] = "Удалить таймер"
L["DELETETIMER_CONFIRM"] = "Вы точно уверены что хотите удалить этот таймер?"
L["DESC_FONTOFFSET"] = "This offsets the text to the left or right of the default position on the bar." -- Requires localization
L["Dispel"] = "Dispel" -- Requires localization
L["Dispel Alert"] = "Dispel Alert" -- Requires localization
L["Dispel Alert Removable Buffs"] = "Dispel Alert Removable Buffs" -- Requires localization
L["Display as percentage"] = "Display as percentage" -- Requires localization
L["Display removable buffs"] = "Отобразить снимаемые баффы"
L["Duration"] = "Время действия"
L["Durations"] = "Время действия"
L["Edge size"] = "Размер рамки"
L["Embed on bar"] = "Внутри панели"
L["Emote"] = "Эмоция"
L["Enable"] = "Включено"
L["Enable audio"] = "Enable audio" -- Requires localization
L["ENABLEOOCOVERRIDE_DESC"] = "Смена прозрачности полоски таймера при режиме 'Вне боя' "
L["Enable Right-Click to cast"] = "Enable Right-Click to cast" -- Requires localization
L["Enable which spells to track"] = "Enable which spells to track" -- Requires localization
L["Enter a Spell Name or ID..."] = "Введите название заклинания или его ID"
L["ENTER NAME OR ID"] = "Введите название или его ID"
L["Expand"] = "Развернуть"
L["Expiring"] = "Заканчивающийся"
L["finished."] = "завершен"
L["Flash when expiring"] = "Мигать по завершении"
L["Focus"] = "фокус"
L["Focus Target Frame"] = "Focus Target Frame" -- Requires localization
L["Font face"] = "Шрифт"
L["Font flags"] = "Font flags"
L["Font offset"] = "Font offset" -- Requires localization
L["Fonts"] = "Шрифты"
L["Font shadow"] = "Тень шрифта"
L["Font size"] = "Размер шрифта"
L["Frame Positioning"] = "Расположение элементов"
L["from"] = "c"
L["General Settings"] = "Основные настройки"
L["Guild"] = "Гильдия"
L["Health %"] = "Здоровье %"
L["Health Bar"] = "Health Bar" -- Requires localization
L["Health font"] = "Health font" -- Requires localization
L["Health offset"] = "Смещение индикатора здоровья"
L["Height"] = "Высота"
L["High color"] = "Цвет панели при высоком значения энергии"
L["High resource change"] = "High resource change" -- Requires localization
L["High warning %"] = "Значение энергии %"
L["High warning number"] = "High warning number" -- Requires localization
L["Horizontal"] = "Горизонтально"
L["Hours"] = "Часы"
L["Icons"] = "Icons" -- Requires localization
L["Icon size"] = "Размер иконки"
L["ICOOLDOWN_DESC"] = "Внутренний кулдаун заклинания? (если он есть, и Вы знаете его значение)"
L["IMPORTALERTSET_CONFIRM"] = "Вы действительно хотите импортировать настройки по умолчанию для этого подземелья"
L["Import all selected timers"] = "Импортировать все выбранные таймеры?"
L["IMPORT INDIVIDUAL TIMERS"] = "Импортировать индивидуальные таймеры"
L["Imports"] = "Imports" -- Requires localization
L["Inactive alpha"] = "Прозрачность при неактивности"
L["INACTIVEALPHA_DESC"] = "Значение прозрачности этой панели таймеров, когда нечего отслеживать."
L["INACTIVEALPHASTA_DESC"] = "Значение прозрачности этого таймера, когда он неактивен."
L["In an arena"] = "На арене"
L["In a party"] = "В группе"
L["In a PvP zone"] = "В зоне ПвП"
L["In a raid"] = "В рейде"
L["INCOMBATLOCKDOWN"] = "|cffff0000ВЫ не можете сделать это во время боя!|r"
L["Incoming heals"] = "Incoming heals" -- Requires localization
L["INDICATORDESC_ENABLE"] = "Enable this indicator." -- Requires localization
L["Indicators"] = "Indicators" -- Requires localization
L["Indicator trigger"] = "Indicator trigger" -- Requires localization
L["Insets"] = "Вставки"
L["Internal cooldown"] = "Внутренний кулдаун"
L["Internal Cooldowns"] = "внутренние кулдауны"
L["Interrupt Announce"] = "Сбитие каста"
L["Interrupted"] = "Прервано"
L["Invalid alert name!"] = "Неверное название предупреждения!"
L["Invalid announcement name!"] = "Invalid announcement name!" -- Requires localization
L["Invalid indicator name!"] = "Invalid indicator name!" -- Requires localization
L["Invalid Timer"] = "|cffff0000неверный таймер|r"
L["ITEM_DESC"] = "Наберите ТОЧНОЕ название вещи для отслеживания кулдауна (напрмер 'Камень возвращения')"
L["Layout"] = "Макет"
L["Left"] = "Слева"
L["LEFT"] = "Слева"
L["LEFT/BOTTOM"] = "Слева/Снизу"
L["Logarithmic"] = "Логарифметический"
L["LOGARITHMIC_DESC"] = "Премещений таймеров логарифмически."
L["Low color"] = "Цвет панели фокуса при малом значении энергии"
L["Low resource change"] = "Low resource change" -- Requires localization
L["Low warning %"] = "Low warning %" -- Requires localization
L["Low warning number"] = "Low warning number" -- Requires localization
L["Master audio"] = "Master Audio"
L["MASTERAUDIO_DESC"] = "Проигрывать все звуковые предупреждени через  \"Master Audio\" канал."
L["Match alpha of resource bar"] = "Match alpha of resource bar" -- Requires localization
L["MINFORTENTHS_DESC"] = "Количество оставшихся секунд, при котором будут отображатся десятые доли сеекунды."
L["MINIMAP_BUTTON_INFO"] = [=[Левый щелчок для открытия настроек
Правый щелчок для перемещения элементов
Shift+клик для премещения кнопки
Alt+shift+клик для свободного перемещения кнопки]=]
L["MINIMAP_BUTTON_SHOW"] = "Отображать иконку у миникарты"
L["Minutes"] = "Минуты"
L["MONOCHROME"] = "MONOCHROME"
L["Mounted alpha"] = "Прозрачность верхом"
L["Mounted override"] = "Верхом"
L["Move Frames"] = "Перемещение элементов"
L["MOVEFRAMES"] = [=[You can unlock and move ClassMods frames by typing "/classmods lock".
Or by using the "Move Frames" button below.]=] -- Requires localization
L["MOVE FROM BAR END TO BAR END BASED ON TIME"] = "Движение в границах панели в зависимости от времени"
L["MOVERSSETTODEFAULT"] = "Якорь фреймов сброшен в точку по умолчанию."
L["New alert '%s' created."] = "Новое предупреждение '%s' создано."
L["New announcement '%s' created."] = "New announcement '%s' created." -- Requires localization
L["New indicator '%s' created."] = "New indicator '%s' created." -- Requires localization
L["No Announce"] = "Не оповещать"
L["NONE"] = "Нет"
L["NON-STATIONARY ICONS ARRANGED BASED ON TIME & PRIORITY"] = "Движене в границах панели в зависимости от времени и приоритета"
L["Normal color"] = "Обычный цвет"
L["No target override"] = "No target override" -- Requires localization
L["No target alpha"] = "No target alpha" -- Requires localization
L["Numeric auto attack timer"] = "Numeric auto attack timer" -- Requires localization
L["Officer"] = "Офицерский канал"
L["Official Support:"] = "Официальная поддержка:"
L["Offset from main spell"] = "Смещение от основного заклинания"
L["Offsets"] = "Смещение"
L["on"] = "на"
L["Only if known"] = "Только если известно"
L["ONLYIFKNOWN_DESC"] = "Активировать этот таймер только если заклинание известно или предмет находится у вас в сумках"
L["Only show if missing"] = "Показывать, только если отстутсвует"
L["Only show in combat"] = "Показывать только в бою"
L["Only valid numeric offsets are allowed."] = "Только допустимое числовое значение разрешено."
L["OOC alpha"] = "Прозрачность вне боя"
L["OOC override"] = "Вне боя"
L["OPTIONSINTRO"] = "|cffabd473ClassMods|r Автор Kaelyth @ Dath'Remar, создано _JS_"
L["...or an Item Name or ID"] = "название или ID предмета"
L["OUTLINE"] = "OUTLINE"
L["Override update interval"] = "Override update interval" -- Requires localization
L["Owner of spell"] = "Кто наложил заклинание"
L["Party"] = "Группа"
L["PARTYCHANNEL_DESC"] = "Выберите канал для отправки сообщений, если вы в группе. (но не на арене)"
L["Party Frames"] = "Party Frames" -- Requires localization
L["Party Pet Frames"] = "Party Pet Frames" -- Requires localization
L["Percent Health font"] = "Percent Health font" -- Requires localization
L["Pet"] = "Питомец"
L["Pet Frame"] = "Pet Frame" -- Requires localization
L["Pet Health"] = "Здоровье питомца"
L["Pet health bar"] = "Pet health bar" -- Requires localization
L["Pet health percentage"] = "Pet health percentage" -- Requires localization
L["Pet's health font"] = "Pet's health font" -- Requires localization
L["Player"] = "Игрок"
L["Players only"] =  "Players only" -- Requires localization
L["Player Health"] = "Здоровье игрока"
L["Position"] = "Позиция"
L["Positon of timer text"] = "Позиция текста таймера"
L["PRIORITIZEDESC_ENABLE"] = "Если включено, для стационарных таймеров, таймеры с высоким приоритетом будут смещены перед таймерами с меньшим приоритетом."
L["Profiles"] = "Профайлы"
L["PVPCHANNEL_DESC"] = "Выберите канал для отправки сообщений если вы на поле боя."
L["PvP zone only"] = "Только ПвП зона"
L["Raid"] = "Рейд"
L["RAIDCHANNEL_DESC"] = "Выберите канал для отправки сообщений если вы в рейдовой группе.(но не на поле боя)"
L["Raid Frames"] = "Raid Frames" -- Requires localization
L["Raid Pet Frames"] = "Raid Pet Frames" -- Requires localization
L["Removable buffs backdrop"] = "Задний фон диспелищихся баффов"
L["Removable buffs border"] = "Рамка диспелищихся баффов"
L["Removable Buffs Display"] = "Отображение диспелищихся баффов"
L["Removable Buffs Texture Coords"] = "Координаты текстуры диспелищихся баффов"
L["Removables icon size"] = "Размер иконки диспелищихся баффов"
L["removed"] = "Снято"
L["Reorder with priority"] = "По приоритету"
L["REPLACE ALL CURRENT TIMERS WITH THE DEFAULTS"] = "Заменить все текущие таймеры на настройки по умолчанию"
L["Reset"] = "Reset" -- Requires localization
L["RESETALERTS_CONFIRM"] = [=[This will remove (delete) all current Alerts and replace them defaults.

Are you Sure?]=] -- Requires localization
L["RESETALERTS_DESC"] = "Replace all current Alerts with the defaults" -- Requires localization
L["RESETANNOUNCE_CONFIRM"] = [=[This will remove (delete) all current Announcements and replace them defaults.

Are you Sure?]=] -- Requires localization
L["RESETANNOUNCE_DESC"] = "Replace all current Announcements with the defaults" -- Requires localization
L["Resource Bar"] = "Resource Bar" -- Requires localization
L["RESOURCEBARACTIVEALPHA_DESC"] = "Alpha value for when the resource bar is currently draining/filling. (in use)" -- Requires localization
L["RESOURCEBARAUTOATTACKBARDESC_ENABLE"] = "Adds a moving bar to the bottom of the resource bar to indicate when your next auto attack will occur." -- Requires localization
L["RESOURCEBARCOLORNORM_DESC"] = "This color can be overridden with other settings, such as low or high threshold or indicators being set to change the color." -- Requires localization
L["RESOURCEBARDEADALPHA_DESC"] = "Value to set the resource bar's alpha to when Dead override is turned on and you are dead or a ghost." -- Requires localization
L["RESOURCEBARHIGHWARNDESC_ENABLE"] = "Change the resource bar's color if above the set amount for being considered high." -- Requires localization
L["RESOURCEBARHIGHWARNTHRESHOLD_DESC"] = "Set the value when the high warning color change should occur." -- Requires localization
L["RESOURCEBARINACTIVEALPHA_DESC"] = "Alpha value for when the resource bar is not currently draining/filling. (not in use)" -- Requires localization
L["RESOURCEBARLOWWARNDESC_ENABLE"] = "Change the resource bar's color if below the set amount for being considered low." -- Requires localization
L["RESOURCEBARLOWWARNTHRESHOLD_DESC"] = "Set the value when the low warning color change should occur." -- Requires localization
L["RESOURCEBARNUMBERDESC_ENABLE"] = "Show a numeric indicator for current resource value on the bar." -- Requires localization
L["RESOURCEBARSTACKSEMBEDDESC_ENABLE"] = [=[If enabled, the stacks indicator will embed to the top right of the resource bar.
You can disable this to allow the stacks indicator to be moved freely from the bar.]=] -- Requires localization
L["RESOURCEBARSTACKSIZE_DESC"] = "Set the size of the stacks (squared) when not embedded on the resource bar." -- Requires localization
L["RESOURCEBARSTACKSREVERSEDESC_ENABLE"] = "Make the stacks fill in right-to-left as opposed to left-to-right." -- Requires localization
L["RESOURCEBARSTACKSSELECT_DESC"] = "Select which buff you wish to track with the Stacks bar." -- Requires localization
L["RESOURCEBARTICKDESC_ENABLE"] = "Enables the use of this tick. (a \"tick\" is a mark on the resource bar indicating how much you need to cast a defined spell)" -- Requires localization
L["Resource font"] = "Resource font" -- Requires localization
L["Resource offset"] = "Resource offset" -- Requires localization
L["Resource prediction"] = "Resource prediction" -- Requires localization
L["REVERSEDESC_ENABLE"] = "Обратить движение таймеров в противоположную сторону"
L["Reverse fill"] = "Обратное заполнение"
L["Reverse movement"] = "Обратное смещение"
L["Reverse stacks"] = "Обратить стаки"
L["REVERTTIMERS_CONFIRM"] = [=[Это действие удалит все таймеры и восстановит значение настроек по умолчанию.

Вы уверены?]=]
L["Right"] = "Справа"
L["RIGHT"] = "Справа"
L["RIGHT/TOP"] = "Справа/Сверху"
L["'s"] = "'s"
L["Say"] = "Сказать"
L["Seconds"] = "Секунды"
L["Select active stack"] = "Select active stack" -- Requires localization
L["Select a spell"] = "Select a spell" -- Requires localization
L["Select how this bar's timers function:"] = "Выберите как будет работать эта панель таймеров:"
L["Select timers from any tab then click the import button."] = "Выберите таймер на любой вкладке, а затем нажмите кнопку 'импортитровать'"
L["Self Whisper"] = "Шепнуть себе"
L["Set update interval"] = "Set update interval" -- Requires localization
L["Show d/h/m/s for time"] = "Показать д/ч/м/с для времени"
L["Show tips when hovering removable buffs"] = "Показывать подсказки при наведении на баффы, которые могут быть сняты"
L["Show when:"] = "Показать когда:"
L["Size"] = "Размер"
L["SLASHDESC1"] = "|cffabd473JS' Hunter Bar %s|r slash command help:"
L["SLASHDESC2"] = "открыть конфигурацию"
L["SLASHDESC3"] = "блокировать или разброкировать фреймы"
L["SLASHDESC4"] = "сбросить позицию фреймов"
L["Solo"] = "Соло"
L["SOLOCHANNEL_DESC"] = "Выберите канал для отправки сообщений, если вы одни (без группы, рейда и т.д.)"
L["Sound"] = "Звук"
L["Spell"] = "Заклинание"
L["Spell Cast Start"] = "Начало чтения заклинания"
L["SPELL_DESC"] = "введите ТОЧНОЕ название заклинания, баффа, дебаффа, прока тринкета для отслеживания. (или используйте ID способности)"
L["SPELLLICON_DESC"] = "если иконка выглядит как '?', это значит что она не может быть проверена в данный момент. (это случается когда способность является не вашей, а другого класса или босса - что-то, что вы не можете использовать в данный момент)"
L["SPELLOWNER_DESC"] = "Укажите кому (Вам самим или кому-то другому) должна принадлежать способность для отображения таймера"
L["Stacks"] = "Стаки"
L["Stacks color"] = "Цвет стаков"
L["Stacks font"] = "Шрифт стаков"
L["Stacks font color"] = "Цвет шрифта стаков"
L["Stack size"] = "Размер стаков"
L["Stacks on top"] = "Стаки сверху"
L["STACKSONTOPDESC_ENABLE"] = "Расположить стаки вверху панели фокуса."
L["Static color"] = "Static color"
L["Static time color"] = "Static time color"
L["STATICTIMERCOLOR_DESC"] = "Sets the color of the time number to a static color or else the cooldown colors will be used based on time remaining"
L["STATIONARYDESC_ENABLE"] = "Таймер в виде стационарной иконки не движущейся и постоянно видимой."
L["Stationary icons"] = "Стационарные иконки"
L["STATIONARY ICONS IN A ROW (CAN OPTIONALLY HIDE)"] = "Стационарные иконки"
L["Target"] = "Цель"
L["Target Bar"] = "Target Bar" -- Requires localization
L["Target classification"] = "Target classification" -- Requires localization
L["Target creature type"] = "Target creature type" -- Requires localization
L["Target Frame"] = "Target Frame" -- Requires localization
L["Target health percentage"] = "Процент здоровья цели"
L["Target of Target Frame"] = "Target of Target Frame" -- Requires localization
L["Target's health font"] = "Шрифт текста здоровья цели"
L["TEST_IN_ACTION"] = "Вы можете атаковать манекен, изменять настройки и наблюдать сделанные вами изменения, в бою."
L["Texture"] = "Текстура"
L["Texture coords"] = "Координаты текстуры"
L["Texture that gets used on the moving status bar."] = "Текстура используемая для передвижения панели статуса."
L["THICKOUTLINE"] = "THICKOUTLINE"
L["TICKCOLOR_DESC"] = "This will make the bar turn to the defined color if current energy is more than the cost of this tick but less than the next higher tick or bar max."
L["TICKICON_DESC"] = "Заменяет тестуру необходимого фокуса на иконку заклинания, которое она обозначает."
L["Tick Mark 1 (Main Spell)"] = "Отметка 1 (Основное заклинание)"
L["Tick Mark 2"] = "Отметка 2"
L["Tick Mark 3"] = "Отметка 3"
L["Tick Mark 4"] = "отметка 4"
L["Tick Mark 5"] = "Отметка 5"
L["Tick marks"] = "Отметки"
L["TICKOFFSET_DESC"] = "Makes this indicator tick place itself to the right of the main spell; turning it off places it from the very left of the bar plus focus cost."
L["TICKSPEC_DESC"] = "Выберите специализацию для которой отображать эту метку."
L["TICKSPELL_DESC"] = "Выберите заклинание (стоимость по фокусу) для отображения метки на панели фокуса."
L["Tile size"] = "Размер плитки"
L["Tile the backdrop"] = "Фон плитки"
L["Timer"] = "Таймер"
L["Timer backdrop"] = "Фон таймера"
L["TIMER BAR"] = "Панель таймеров"
L["Timer Bar 1"] = "Панель таймеров 1"
L["Timer Bar 2"] = "Панель таймеров 2"
L["Timer Bar 3"] = "Панель таймеров 3"
L["TIMERBAR_SET_TO_MOVING"] = "Настройки панели 'передвижной'."
L["TIMERBAR_SET_TO_PRIORITY"] = "Настройки панели 'по приоритету'."
L["TIMERBAR_SET_TO_STATIONARY"] = "Настройки панели 'стационарно'."
L["Timer border"] = "Граница таймера"
L["TIMERCOUNTFORSET"] = "Все таймеры"
L["Timer decimals"] = "Десяты доли секунды"
L["Timer font"] = "Шрифт таймера"
L["TIMERITEM_INVALID"] = "Вы ввели недопустимое название вещи!"
L["TIMERITEM_UNVERIFIED"] = "Таймер не может быть проверен. Если вы уверены в точном написании ID или названии заклинания, игнорируйте это сообщение."
L["TIMERORIENTATION_DESC"] = "Вы хотите чтобы панель таймеров была вертикальной или горизонтальной?"
L["Timers"] = "Таймеры"
L["TIMERSIMPORTED"] = "Импортировать %s таймер(ы)"
L["Timer size"] = "Размер таймера"
L["TIMERSPELL_INVALID"] = "Недопустимое название заклинания!"
L["TIMERSPELL_UNVERIFIED"] = "Имя заклинания не может быть проверено, потому что написано неверно, либо его нет в Ваше книге заклинаний. Если вы увеерны что имя заклинания написано верно, игнорируйте данное сообщение."
L["Timer texture coords"] = "Координаты текстуры таймера"
L["Top"] = "Сверху"
L["TOP"] = "Сверху"
L["Top-left X"] = "X вверху-слева"
L["Top-left Y"] = "Y вверху-слева"
L["Totem Timers"] = "Totem Timers" -- Requires localization
L["Track crowd control"] = "Отслеживать контроль"
L["Use class colors for the bar"] = "Использовать цвета классов для панели"
L["Use power colors for the bar"] = "Use power colors for the bar" -- Requires localization
L["Use target reaction colors for the bar"] = "Use target reaction colors for the bar" -- Requires localization
L["Use spell icon"] = "Использовать иконку заклинания"
L["Vehicle"] = "Транспорт"
L["Vertical"] = "Вертикально"
L["What do you want to call this alert?"] = "Введите название предупреждения."
L["What do you want to call this announcement?"] = "What do you want to call this announcement?" -- Requires localization
L["What do you want to call this indicator?"] = "What do you want to call this indicator?" -- Requires localization
L["What would you like to do?"] = "Что бы вы хотели делать?"
L["Whisper target if mounted"] = "Шепнуть цели, если она верхом"
L["Width"] = "Ширина"
L["WIZARD"] = "WIZARD"
L["X offset"] = "Смещение по X"
L["Yell"] = "Крикнуть"
L["Y offset"] = "Смещение по Y"
L["You already have an alert with that name!"] = "Вы уже имеете предупреждение с этим названием!"
L["You already have an announcement with that name!"] = "You already have an announcement with that name!" -- Requires localization
L["You already have an indicator with that name!"] = "You already have an indicator with that name!" -- Requires localization
L["You do not have any alerts set."] = "Вы не имеете никаких настроенных предупреждений."
L["You do not have any announcements set."] = "You do not have any announcements set." -- Requires localization
L["You do not have any indicators set."] = "You do not have any indicators set." -- Requires localization
L["Yours"] = "Вы"