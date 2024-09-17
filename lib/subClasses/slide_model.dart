class SlideModel {
  final String imageUrl;
  final String title;
  final String description;
  SlideModel({
     required this.imageUrl,
     required this.title,
     required this.description,

  });
}




List<SlideModel> slidelist =[
  SlideModel(
      imageUrl: 'Assets/bart_impulsivity.png',
      title: 'Easy, Fast & Trusted',
      description:'Fast money transfer and guaranteed safe transactions with others.'

  ),
  SlideModel(
      imageUrl: 'Assets/vacation_rental5.png',
      title: 'Free Transaction',
      description:'Provides the quality of the financial system with free money transaction without any fees.'

  ),
  SlideModel(
      imageUrl: 'Assets/images.png',
      title: 'Bills Payments Made Easy',
      description:'Pay monthly or daily bills at home in a site of TransferMe.'

  )
];