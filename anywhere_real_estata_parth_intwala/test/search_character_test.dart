import 'package:flutter_test/flutter_test.dart';

//screen
import 'package:anywhere_real_estata_parth_intwala/Screens/list.dart';
import 'package:anywhere_real_estata_parth_intwala/APIOperation/fetch_data.dart';
//model
import 'package:anywhere_real_estata_parth_intwala/Models/character.dart';

void main() {
  test("Let's search list of Characters based on string", () async {
    //declare
    FetchData data = FetchData();

    //run
    await data.fetchCharacters("simpsons+characters");
    List<Character> filteredCharacters =
        FilterDisplayCharacters.showSearchCharacters("fat", data.characters);

    //verify
    expect(filteredCharacters.length, characters.length);
    expect(filteredCharacters.length, isNot(3));
    for (int i = 0; i < filteredCharacters.length; i++) {
      expect(filteredCharacters[i].name, characters[i].name);
      expect(filteredCharacters[i].description, characters[i].description);
      expect(filteredCharacters[i].url, characters[i].url);
    }
  });

  test("Let's search list of Characters based on empty", () async {
    //declare
    FetchData data = FetchData();

    //run
    await data.fetchCharacters("simpsons+characters");
    List<Character> filteredCharacters =
        FilterDisplayCharacters.showSearchCharacters("", data.characters);

    //verify
    expect(filteredCharacters.length, allCharacters.length);
    expect(filteredCharacters.length, isNot(3));
    for (int i = 0; i < filteredCharacters.length; i++) {
      expect(filteredCharacters[i].name, allCharacters[i].name);
      expect(filteredCharacters[i].description, allCharacters[i].description);
      expect(filteredCharacters[i].url, allCharacters[i].url);
    }
  });
}

List<Character> characters = [
  Character(
    name: "Chief Wiggum",
    description:
        "Chief Clancy Wiggum is a fictional character from the animated television series The Simpsons, voiced by Hank Azaria. He is the chief of police in the show's setting of Springfield, and is the father of Ralph Wiggum and the husband of Sarah Wiggum.",
    url: "/i/f0eb79ee.png",
  ),
  Character(
    name: "Fat Tony (The Simpsons)",
    description:
        "Anthony \"Fat Tony\" D'Amico is the name of two recurring characters in the animated sitcom The Simpsons. Both are voiced by Joe Mantegna and first appeared in the episode \"Bart the Murderer\" of the third season. Fat Tony is a mobster and the underboss of the Springfield Mafia.",
    url: "",
  ),
];

List<Character> allCharacters = [
  Character(
    name: "Apu Nahasapeemapetilan",
    description:
        "Apu Nahasapeemapetilan is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".",
    url: "",
  ),
  Character(
    name: "Apu Nahasapeemapetilon",
    description:
        "Apu Nahasapeemapetilon is a recurring character in the American animated television series The Simpsons. He is an Indian immigrant proprietor who runs the Kwik-E-Mart, a popular convenience store in Springfield, and is known for his catchphrase, \"Thank you, come again\".",
    url: "/i/99b04638.png",
  ),
  Character(
    name: "Barney Gumble",
    description:
        "Barnard Arnold \"Barney\" Gumble is a recurring character in the American animated TV series The Simpsons. He is voiced by Dan Castellaneta and first appeared in the series premiere episode \"Simpsons Roasting on an Open Fire\". Barney is the town drunk of Springfield and one of Homer Simpson's friends.",
    url: "/i/39ce98c0.png",
  ),
  Character(
    name: "Bart Simpson",
    description:
        "Bartholomew Jojo \"Bart\" Simpson is a fictional character in the American animated television series The Simpsons and part of the Simpson family. He is voiced by Nancy Cartwright and first appeared on television in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.",
    url: "",
  ),
  Character(
    name: "Bender (Futurama)",
    description:
        "Bender Bending Rodríguez is one of the main characters in the animated television series Futurama. He was conceived by the series' creators Matt Groening and David X. Cohen, and is voiced by John DiMaggio.",
    url: "/i/cb4121fd.png",
  ),
  Character(
    name: "Bleeding Gums Murphy",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Chief Wiggum",
    description:
        "Chief Clancy Wiggum is a fictional character from the animated television series The Simpsons, voiced by Hank Azaria. He is the chief of police in the show's setting of Springfield, and is the father of Ralph Wiggum and the husband of Sarah Wiggum.",
    url: "/i/f0eb79ee.png",
  ),
  Character(
    name: "Cletus Spuckler",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "/i/4d663a85.gif",
  ),
  Character(
    name: "Comic Book Guy",
    description:
        "Comic Book Guy is the common, popular name for Jeffrey \"Jeff\" Albertson, a recurring fictional character in the animated television series The Simpsons. He is voiced by Hank Azaria and first appeared in the second-season episode \"Three Men and a Comic Book\", which originally aired on May 9, 1991.",
    url: "/i/911ab519.png",
  ),
  Character(
    name: "Declan Desmond",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Disco Stu",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Drederick Tatum",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Dr. Hibbert",
    description:
        "Dr. Julius Michael Hibbert, M.D. is a recurring character on the television animated sitcom The Simpsons. He is Springfield's most prominent medical professional. Although he has a kind and warm persona, he is also often characterized as greedy and lacking in empathy.",
    url: "/i/c9497b7e.png",
  ),
  Character(
    name: "Dr. Nick",
    description:
        "Dr. Nicholas Riviera is a recurring fictional character in the American animated sitcom The Simpsons. He is voiced by Hank Azaria and first appeared in the episode \"Bart Gets Hit by a Car\". Dr. Nick is an inept quack physician, and a satire of incompetent medical professionals.",
    url: "/i/db757c91.png",
  ),
  Character(
    name: "Dr. Velimirovic",
    description:
        "\"Pygmoelian\" is the sixteenth episode of the eleventh season of the American animated sitcom The Simpsons. It originally aired on the Fox network in the United States on February 27, 2000.",
    url: "",
  ),
  Character(
    name: "Duffman",
    description:
        "Barry Huffman, more commonly known by his work name Duffman, is a character on the animated sitcom The Simpsons. He is the mascot and chief spokesperson for Duff Beer.",
    url: "",
  ),
  Character(
    name: "Edna Krabappel",
    description:
        "Edna Krabappel-Flanders is a fictional character from the American animated sitcom The Simpsons, voiced by Marcia Wallace from 1990 until her death in October 2013. She was a 4th-grade teacher, who taught Bart Simpson's class at Springfield Elementary School.",
    url: "/i/1bdfff5e.png",
  ),
  Character(
    name: "Fat Tony (The Simpsons)",
    description:
        "Anthony \"Fat Tony\" D'Amico is the name of two recurring characters in the animated sitcom The Simpsons. Both are voiced by Joe Mantegna and first appeared in the episode \"Bart the Murderer\" of the third season. Fat Tony is a mobster and the underboss of the Springfield Mafia.",
    url: "",
  ),
  Character(
    name: "Graggle Simpson",
    description:
        "Gumbly Simpson or Graggle is a metafictional character purported to be from the American animated sitcom The Simpsons.",
    url: "",
  ),
  Character(
    name: "Grampa Simpson",
    description:
        "Abraham Jebediah \"Abe\" Simpson II, better known as Grampa, is a recurring character in the animated television series The Simpsons.",
    url: "/i/7b1c968b.png",
  ),
  Character(
    name: "Groundskeeper Willie",
    description:
        "William MacMoran MacDougal, better known as Groundskeeper Willie, is a recurring character on The Simpsons, voiced by Dan Castellaneta. He is the head groundskeeper and Janitor at Springfield Elementary School. Willie is almost feral in nature and is immensely proud of his Scottish origin.",
    url: "/i/f845601f.png",
  ),
  Character(
    name: "Hans Moleman",
    description:
        "Hans Moleman is a recurring character on the animated television series The Simpsons. He was created by series creator Matt Groening and is voiced by Dan Castellaneta and first appeared in the episode \"Principal Charming\".",
    url: "/i/9f651728.png",
  ),
  Character(
    name: "Homer Simpson",
    description:
        "Homer Jay Simpson is a fictional character and the main protagonist of the American animated sitcom The Simpsons. He is voiced by Dan Castellaneta and first appeared, along with the rest of his family, in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.",
    url: "/i/bf0eb228.png",
  ),
  Character(
    name: "Itchy (The Simpsons)",
    description:
        "The Itchy & Scratchy Show is a fictional animated television series featured in the American animated television series The Simpsons. It appears as a part of The Krusty the Clown Show.",
    url: "",
  ),
  Character(
    name: "Jimbo Jones",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Judge Constance Harm",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Kang and Kodos",
    description:
        "Kang and Kodos Johnson are a duo of fictional recurring characters in the animated television series The Simpsons. Kang is voiced by Harry Shearer and Kodos by Dan Castellaneta.",
    url: "/i/be84f45b.png",
  ),
  Character(
    name: "Kearney Zzyzwicz",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Kent Brockman",
    description:
        "Kent Brockman is a fictional character in the animated television series The Simpsons. He is voiced by Harry Shearer and first appeared in the episode \"Krusty Gets Busted\". He is a grumpy, self-centered, pompous local Springfield news anchor.",
    url: "/i/b6c36d00.jpg",
  ),
  Character(
    name: "Krusty the Clown",
    description:
        "Herschel Shmoikel Pinchas Yerucham Krustofsky, better known by his stage name Krusty the Clown, is a recurring character on the animated television series The Simpsons. He is voiced by Dan Castellaneta.",
    url: "/i/caa07f01.png",
  ),
  Character(
    name: "Lenny and Carl",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "/i/cde0d56a.png",
  ),
  Character(
    name: "Lionel Hutz",
    description:
        "Lionel Hutz is a fictional character in the American animated sitcom The Simpsons. He was voiced by Phil Hartman, and his first appearance was in the season two episode \"Bart Gets Hit by a Car\".",
    url: "/i/94d72e52.jpg",
  ),
  Character(
    name: "Lisa Simpson",
    description:
        "Lisa Marie Simpson is a fictional character in the animated television series The Simpsons. She is the middle child and most accomplished of the Simpson family. Voiced by Yeardley Smith, Lisa was born as a character in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.",
    url: "/i/0c6d3b53.png",
  ),
  Character(
    name: "Maggie Simpson",
    description:
        "Margaret Evelyn Lenny \"Maggie\" Simpson is a fictional character in the animated television series The Simpsons and the youngest member of the Simpson family. She first appeared on television in the Tracey Ullman Show short \"Good Night\" on April 19, 1987.",
    url: "/i/c018dead.png",
  ),
  Character(
    name: "Marge Simpson",
    description:
        "Marjorie Jacqueline \"Marge\" Simpson is a character in the American animated sitcom The Simpsons and part of the eponymous family. Voiced by Julie Kavner, she first appeared on television in The Tracey Ullman Show short \"Good Night\" on April 19, 1987.",
    url: "/i/b75bd67d.png",
  ),
  Character(
    name: "Maude Flanders",
    description:
        "Maude Flanders was a fictional character in The Simpsons. She was the wife of Ned Flanders, and the mother of Rod and Todd. Maude was voiced by Maggie Roswell and also by Marcia Mitzman Gaven while Roswell was involved in a pay dispute.",
    url: "",
  ),
  Character(
    name: "Mayor Quimby",
    description:
        "Mayor Joseph Fitzgerald O'Malley Fitzpatrick O'Donnell The Edge \"Joe\" Quimby, nicknamed Diamond Joe, is a recurring character from the animated sitcom television series The Simpsons. He is voiced by Dan Castellaneta, and first appeared in the episode \"Bart Gets an 'F'\".",
    url: "/i/93d80e95.png",
  ),
  Character(
    name: "Milhouse Van Houten",
    description:
        "Milhouse Mussolini Van Houten is a recurring character in the Fox animated television series The Simpsons voiced by Pamela Hayden and created by Matt Groening. Milhouse is Bart Simpson's best friend in Mrs. Krabappel's fourth grade class at Springfield Elementary School.",
    url: "/i/c1923cb1.png",
  ),
  Character(
    name: "Moe Szyslak",
    description:
        "Moe Szyslak is a recurring character from the animated television series The Simpsons. He is voiced by Hank Azaria and first appeared in the series premiere episode \"Simpsons Roasting on an Open Fire\".",
    url: "/i/388580ad.png",
  ),
  Character(
    name: "Mona Simpson (The Simpsons)",
    description:
        "Mona Penelope Simpson is a fictional guest character in the animated television series The Simpsons. She is voiced most prominently by Glenn Close, but has also been voiced by Maggie Roswell, Tress MacNeille, and Pamela Hayden.",
    url: "/i/d6efc652.png",
  ),
  Character(
    name: "Mr. Burns",
    description:
        "Charles Montgomery Plantagenet Schicklgruber Burns, usually referred to as Mr. Burns, Monty, or C. Montgomery Burns, is a recurring character and the main antagonist of the animated television series The Simpsons, voiced initially by Christopher Collins and currently by Harry Shearer.",
    url: "/i/cf311517.png",
  ),
  Character(
    name: "Nahasapeemapetilon octuplets",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Ned Flanders",
    description:
        "Nedward \"Ned\" Flanders Jr. is a fictional character in the animated television series The Simpsons, voiced by Harry Shearer and first appearing in the series premiere episode \"Simpsons Roasting on an Open Fire.\"",
    url: "/i/ad454204.png",
  ),
  Character(
    name: "Nelson Muntz",
    description:
        "Nelson Mandela Muntz is a fictional character and the lead school bully from the animated television series The Simpsons, where he is best known for his signature mocking laugh \"Ha-ha! \". He is voiced by Nancy Cartwright.",
    url: "/i/23702790.png",
  ),
  Character(
    name: "Otto Mann",
    description:
        "Otto Mann is a fictional character on the American animated TV series The Simpsons, voiced by Harry Shearer. He is the school bus driver for Springfield Elementary School, and is known or implied to be a user of several drugs.",
    url: "/i/9efe5c40.gif",
  ),
  Character(
    name: "Patty and Selma",
    description:
        "Patricia Maleficent \"Patty\" Bouvier and Selma Bouvier-Terwilliger-Hutz-McClure-Discotheque-Simpson-D'Amico are fictional characters in the American animated sitcom The Simpsons. They are identical twins and are voiced by Julie Kavner who also voices their sister Marge.",
    url: "",
  ),
  Character(
    name: "Plopper",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Principal Skinner",
    description:
        "Principal Seymour Skinner is a recurring fictional character in the animated sitcom The Simpsons, who is voiced by Harry Shearer.",
    url: "/i/785a66ec.png",
  ),
  Character(
    name: "Professor Frink",
    description:
        "Professor John I.Q. Nerdelbaum Frink Jr., is a recurring character in the animated television series The Simpsons. He is voiced by Hank Azaria, and first appeared in the 1991 episode \"Old Money\".",
    url: "/i/c9dc0e13.png",
  ),
  Character(
    name: "Radioactive Man (The Simpsons character)",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Ralph Wiggum",
    description:
        "Ralph Wiggum is a recurring character on the animated series, The Simpsons. He is voiced by Nancy Cartwright. Ralph, the son of Police Chief Wiggum, is a classmate of Lisa Simpson and is characterized by his frequent non-sequiturs and humorous behavior.",
    url: "/i/2f9c97eb.png",
  ),
  Character(
    name: "Reverend Lovejoy",
    description:
        "Reverend Timothy \"Tim\" Lovejoy, Jr. is a recurring character in the animated television series The Simpsons. He is voiced by Harry Shearer, and first appeared in the episode \"The Telltale Head\". Rev. Lovejoy is the minister at The First Church of Springfield—the Protestant church in Springfield.",
    url: "",
  ),
  Character(
    name: "Roger Meyers, Sr.",
    description:
        "The Itchy & Scratchy Show is a fictional animated television series featured in the American animated television series The Simpsons. It appears as a part of The Krusty the Clown Show.",
    url: "",
  ),
  Character(
    name: "Santa's Little Helper",
    description:
        "Santa's Little Helper is a fictional dog in the American animated television series The Simpsons. He is the pet greyhound of the Simpson family. He was previously voiced by Frank Welker, and is currently voiced by Dan Castellaneta.",
    url: "/i/6825f3f5.png",
  ),
  Character(
    name: "Sideshow Bob",
    description:
        "Robert Underdunk Terwilliger Jr., PhD, better known as Sideshow Bob, is a recurring character in the animated television series The Simpsons. He is voiced by Kelsey Grammer and first appeared in the episode \"The Telltale Head\".",
    url: "/i/922b6a1c.png",
  ),
  Character(
    name: "Sideshow Mel",
    description:
        "Sideshow Mel, full name Melvin Van Horne, is a character on the animated TV show The Simpsons. Sideshow Mel has served as Krusty the Clown's sidekick for more than a decade, replacing Sideshow Bob after Bob was incarcerated from framing Krusty for robbery.",
    url: "",
  ),
  Character(
    name: "Simpson family",
    description:
        "The Simpson family are the fictional characters featured in the animated television series The Simpsons. The Simpsons are a nuclear family consisting of married couple Homer and Marge and their three children, Bart, Lisa, and Maggie.",
    url: "/i/d58b5fe4.png",
  ),
  Character(
    name: "Snake Jailbird",
    description:
        "The Simpsons includes a large array of supporting/minor characters: co-workers, teachers, family friends, extended relatives, townspeople, local celebrities, fictional characters within the show, and even animals.",
    url: "",
  ),
  Character(
    name: "Snowball (The Simpsons)",
    description:
        "The Simpson family consists of fictional characters featured in the animated television series The Simpsons. The Simpsons are a nuclear family consisting of married couple Homer and Marge and their three children Bart, Lisa, and Maggie.",
    url: "",
  ),
  Character(
    name: "The Itchy & Scratchy Show",
    description:
        "The Itchy & Scratchy Show is a show within a show featured on The Simpsons. The show depicts a blue mouse named Itchy, who repeatedly maims or kills a black cat named Scratchy, and is typically presented as 15- to 60-second-long cartoons that are a part of The Krusty the Clown Show.",
    url: "/i/bc74928e.jpg",
  ),
  Character(
    name: "Troy McClure",
    description:
        "Troy McClure is a fictional character in the American animated series The Simpsons. He was originally voiced by Phil Hartman and first appeared in the second season episode \"Homer vs. Lisa and the 8th Commandment.\"",
    url: "/i/20433a15.png",
  ),
  Character(
    name: "Waylon Smithers",
    description:
        "Waylon Joseph Smithers Jr., usually referred to as Mr. Smithers or simply Smithers, is a recurring fictional character in the animated sitcom The Simpsons, voiced by Harry Shearer.",
    url: "/i/12f25a94.png",
  ),
  Character(
    name: "Wendy Sage",
    description:
        "Dr. Wendy Sage is a fictional character on the television animated sitcom The Simpsons. She works as a hypnotherapist and she is also a breast cancer survivor. She visibly has one of her breasts removed.",
    url: "",
  ),
];
