//
//  ViewController.swift
//  Painters
//
//  Created by Alisher Zinullayev on 02.08.2023.
//

import UIKit

final class MainViewController: UIViewController {

    var painters: [Painter] = []
    
    private func addPainters() {
        painters.append(Painter(
            name: "Leonardo Da Vinci",
            info: "Leonardo di ser Piero da Vinci[b]",
            picture: "da_vinci",
            works: [Paintings(workName: "Mona Lisa", workPicture: "mona_lisa", workDescription: "The Mona Lisa is a half-length portrait painting by Italian artist Leonardo da Vinci. Considered an archetypal masterpiece of the Italian Renaissance, it has been described as \"the best known, the most visited, the most written about, the most sung about, [and] the most parodied work of art in the world\" The painting's novel qualities include the subject's enigmatic expression, monumentality of the composition, the subtle modelling of forms, and the atmospheric illusionism.", isOpened: false), Paintings(workName: "The Last Supper", workPicture: "the_last_supper", workDescription: "The Last Supper is a mural painting by the Italian High Renaissance artist Leonardo da Vinci, dated to c. 1495–1498. The painting represents the scene of the Last Supper of Jesus with the Twelve Apostles, as it is told in the Gospel of John – specifically the moment after Jesus announces that one of his apostles will betray him. Its handling of space, mastery of perspective, treatment of motion and complex display of human emotion has made it one of the Western world's most recognizable paintings and among Leonardo's most celebrated works. Some commentators consider it pivotal in inaugurating the transition into what is now termed the High Renaissance The Last Supper is a mural painting by the Italian High Renaissance artist Leonardo da Vinci, dated to c. 1495–1498. The painting represents the scene of the Last Supper of Jesus with the Twelve Apostles, as it is told in the Gospel of John – specifically the moment after Jesus announces that one of his apostles will betray him. Its handling of space, mastery of perspective, treatment of motion and complex display of human emotion has made it one of the Western world's most recognizable paintings and among Leonardo's most celebrated works. Some commentators consider it pivotal in inaugurating the transition into what is now termed the High Renaissance", isOpened: false)])
        )
        painters.append(Painter(
            name: "Vincent van Gogh",
            info: "Vincent Willem van Gogh (30 March 1853 – 29 July 1890) was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade he created approximately 2100 artworks, including around 860 oil paintings, most of them in the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold, symbolic colours, and dramatic, impulsive and highly expressive brushwork that contributed to the foundations of modern art. He sold only one painting during his lifetime and became famous after his suicide, aged 37, which followed years of poverty and mental illness. Vincent Willem van Gogh (30 March 1853 – 29 July 1890) was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade he created approximately 2100 artworks, including around 860 oil paintings, most of them in the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold, symbolic colours, and dramatic, impulsive and highly expressive brushwork that contributed to the foundations of modern art. He sold only one painting during his lifetime and became famous after his suicide, aged 37, which followed years of poverty and mental illness.",
            picture: "van_gogh",
            works: [Paintings(workName: "Starry Night", workPicture: "the_starry_night", workDescription: "The Starry Night (Dutch: De sterrennacht) is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an imaginary village. It has been in the permanent collection of the Museum of Modern Art in New York City since 1941, acquired through the Lillie P. Bliss Bequest. Widely regarded as Van Gogh's magnum opus, The Starry Night is one of the most recognizable paintings in Western art.[6][7]", isOpened: false),
            Paintings(workName: "Irises", workPicture: "irises", workDescription: "Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890. Irises is one of several paintings of irises by the Dutch artist Vincent van Gogh, and one of a series of paintings he made at the Saint Paul-de-Mausole asylum in Saint-Rémy-de-Provence, France, in the last year before his death in 1890.", isOpened: false)]))
        painters.append(Painter(
            name: "Sandro Botticelli",
            info: "Alessandro di Mariano di Vanni Filipepi (c. 1445[1] – May 17, 1510), better known as Sandro Botticelli or simply Botticelli, was an Italian painter of the Early Renaissance. Botticelli's posthumous reputation suffered until the late 19th century, when he was rediscovered by the Pre-Raphaelites who stimulated a reappraisal of his work. Since then, his paintings have been seen to represent the linear grace of late Italian Gothic and some Early Renaissance painting, even though they date from the latter half of the Italian Renaissance period.",
            picture: "sandro_botticelli",
            works: [Paintings(workName: "Adoration of the Magi", workPicture: "adoration_of_the_magi", workDescription: "The Adoration of the Magi or Adoration of the Kings or Visitation of the Wise Men is the name traditionally given to the subject in the Nativity of Jesus in art in which the three Magi, represented as kings, especially in the West, having found Jesus by following a star, lay before him gifts of gold, frankincense, and myrrh, and worship him. It is related in the Bible by Matthew 2:11: \"On entering the house, they saw the child with Mary his mother; and they knelt down and paid him homage. Then, opening their treasure chests, they offered him gifts of gold, frankincense, and myrrh. And having been warned in a dream not to return to Herod, they left for their own country by another path\".", isOpened: false),
            Paintings(workName: "Primavera", workPicture: "primavera", workDescription: "Primavera is a large panel painting in tempera paint by the Italian Renaissance painter Sandro Botticelli made in the late 1470s or early 1480s (datings vary). It has been described as \"one of the most written about, and most controversial paintings in the world, and also \"one of the most popular paintings in Western art\".", isOpened: false)]))
        painters.append(Painter(
            name: "Pablo Picasso",
            info: "Pablo Ruiz Picasso (25 October 1881 – 8 April 1973) was a Spanish painter, sculptor, printmaker, ceramicist and theatre designer who spent most of his adult life in France. One of the most influential artists of the 20th century, he is known for co-founding the Cubist movement, the invention of constructed sculpture,[8][9] the co-invention of collage, and for the wide variety of styles that he helped develop and explore. Among his most famous works are the proto-Cubist Les Demoiselles d'Avignon (1907), and the anti-war painting Guernica (1937), a dramatic portrayal of the bombing of Guernica by German and Italian air forces during the Spanish Civil War.",
            picture: "picasso_picture",
            works: [Paintings(workName: "Les Demoiselles d'Avignon", workPicture: "les_dem", workDescription: "Les Demoiselles d'Avignon (The Young Ladies of Avignon, originally titled The Brothel of Avignon)[2] is a large oil painting created in 1907 by the Spanish artist Pablo Picasso. Part of the permanent collection of the Museum of Modern Art in New York, it portrays five nude female prostitutes in a brothel on Carrer d'Avinyó, a street in Barcelona, Spain. Each figure is depicted in a disconcerting confrontational manner and none is conventionally feminine. The women appear slightly menacing and are rendered with angular and disjointed body shapes. The far left figure exhibits facial features and dress of Egyptian or southern Asian style. The two adjacent figures are shown in the Iberian style of Picasso's native Spain, while the two on the right are shown with African mask-like features. The ethnic primitivism evoked in these masks, according to Picasso, moved him to \"liberate an utterly original artistic style of compelling, even savage force", isOpened: false),
                    Paintings(workName: "Guernica", workPicture: "guernica", workDescription: "Guernica (Spanish: [ɡeɾˈnika]; Basque: [ɡernika]) is a large 1937 oil painting by Spanish artist Pablo Picasso.[1][2] It is one of his best-known works, regarded by many art critics as the most moving and powerful anti-war painting in history.[3] It is exhibited in the Museo Reina Sofía in Madrid. The grey, black, and white painting, on a canvas 3.49 meters (11 ft 5 in) tall and 7.76 meters (25 ft 6 in) across, portrays the suffering wrought by violence and chaos. Prominent in the composition are a gored horse, a bull, screaming women, a dead baby, a dismembered soldier, and flames.", isOpened: false)]
        )
    )
    }
    
    private let paintersTableView: UITableView = {
        
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 400
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        addPainters()
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        paintersTableView.frame = view.bounds
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Painters"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(cgColor: CGColor(red: 0.2, green: 1, blue: 0.2, alpha: 1))
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    private func setupTableView() {
        view.addSubview(paintersTableView)
        paintersTableView.delegate = self
        paintersTableView.dataSource = self
    }

}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        painters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as! MainTableViewCell // else {return UITableViewCell()}
        cell.configure(with: painters[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newVC = PaintsDetailViewController(paintings: painters[indexPath.row].works)
        navigationController?.pushViewController(newVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
