# basic_layout_flutter

A new Flutter project.

## Getting Started

Name : Aiska Oca Amalia
Class : SIB 2G
NIM : 244107060035

![Screeshot Implementasi title row](images/01.png)
Displaying lists of data is a fundamental pattern for mobile apps. Flutter includes the ListView widget to make working with lists a breeze.

![Screeshot Implementasi title row](images/02.png)
Use the standard ListView constructor, passing in a horizontal scrollDirection, which overrides the default vertical direction.

![Screeshot Implementasi title row](images/03.png)
Using the GridView.Count() constructor makes it easy to specify the desired number of rows or columns.

![Screeshot Implementasi title row](images/04.png)
create lists that display different types of content. create an app that shows a header followed by five messages. Therefore, create three classes: ListItem, HeadingItem, and MessageItem.

![Screeshot Implementasi title row](images/05.png)
use LayoutBuilder and ConstrainedBox to space out list items evenly when there is enough space, and to allow users to scroll when there is not enough space

![Screeshot Implementasi title row](images/06.png)
The standard ListView constructor works well for small lists. To work with lists that contain a large number of items, it's best to use the ListView.builder constructor. In contrast to the default ListView constructor, which requires creating all items at once, the ListView.builder() constructor creates items as they're scrolled onto the screen.

![Screeshot Implementasi title row](images/07.png)
Add items to the CustomScrollView.

![Screeshot Implementasi title row](images/08.png)
create the parallax effect by building a list of cards (with rounded corners containing some text). Each card also contains an image. As the cards slide up the screen, the images within each card slide down.
