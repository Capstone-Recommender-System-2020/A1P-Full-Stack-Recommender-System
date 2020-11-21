# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.

from django.db import models

# Create your models here.

# Destination turned to ArtsEvent


class ArtsEvent(models.Model):
    # Field name made lowercase.
    event_id = models.TextField(db_column='Event_ID', primary_key=True)
    # Field name made lowercase.
    name = models.TextField(db_column='Name', blank=True, null=True)
    # Field name made lowercase.
    organization = models.TextField(
        db_column='Organization', blank=True, null=True)
    # Field name made lowercase.
    location = models.TextField(db_column='Location', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    street_address = models.TextField(
        db_column='Street Address', blank=True, null=True)
    # Field name made lowercase.
    price_range = models.TextField(
        db_column='Price_Range', blank=True, null=True)
    # Field name made lowercase.
    kids = models.BigIntegerField(db_column='Kids', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    high_school_students = models.BigIntegerField(
        db_column='High School Students', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    other_young_artists = models.BigIntegerField(
        db_column='Other Young Artists', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    college_students = models.BigIntegerField(
        db_column='College Students', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    young_adults = models.BigIntegerField(
        db_column='Young Adults', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    single_young_adults_field = models.BigIntegerField(
        db_column='Single Young Adults ', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    young_couples = models.BigIntegerField(
        db_column='Young Couples', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    single_adults = models.BigIntegerField(
        db_column='Single Adults', blank=True, null=True)
    # Field name made lowercase.
    couples = models.BigIntegerField(
        db_column='Couples', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    couples_with_kids = models.BigIntegerField(
        db_column='Couples with Kids', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    single_parents = models.BigIntegerField(
        db_column='Single Parents', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    senior_couples = models.BigIntegerField(
        db_column='Senior Couples', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    senior_citizens = models.BigIntegerField(
        db_column='Senior Citizens', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    team_building = models.BigIntegerField(
        db_column='Team Building', blank=True, null=True)
    # Field name made lowercase.
    graduation = models.BigIntegerField(
        db_column='Graduation', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    professional_networking = models.BigIntegerField(
        db_column='Professional Networking', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    social_networking = models.BigIntegerField(
        db_column='Social Networking', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    new_to_dallas = models.BigIntegerField(
        db_column='New to Dallas', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    field_trip = models.BigIntegerField(
        db_column='Field Trip', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    date_night = models.BigIntegerField(
        db_column='Date Night', blank=True, null=True)
    # Field name made lowercase.
    birthday = models.BigIntegerField(
        db_column='Birthday', blank=True, null=True)
    # Field name made lowercase.
    anniversary = models.BigIntegerField(
        db_column='Anniversary', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    family_reunion = models.BigIntegerField(
        db_column='Family Reunion', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    wedding_related_event = models.BigIntegerField(
        db_column='Wedding Related Event', blank=True, null=True)
    # Field name made lowercase.
    entertainment = models.BigIntegerField(
        db_column='Entertainment', blank=True, null=True)
    # Field name made lowercase.
    socialization = models.BigIntegerField(
        db_column='Socialization', blank=True, null=True)
    # Field name made lowercase.
    fun = models.BigIntegerField(db_column='Fun', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    time_pass = models.BigIntegerField(
        db_column='Time Pass', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    city_exposure = models.BigIntegerField(
        db_column='City Exposure', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    family_experience = models.BigIntegerField(
        db_column='Family Experience', blank=True, null=True)
    # Field name made lowercase.
    fundraising = models.BigIntegerField(
        db_column='Fundraising', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    art_exposure = models.BigIntegerField(
        db_column='Art Exposure', blank=True, null=True)
    # Field name made lowercase.
    learning = models.BigIntegerField(
        db_column='Learning', blank=True, null=True)
    # Field name made lowercase.
    inspiration = models.BigIntegerField(
        db_column='Inspiration', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    cultural_immersion = models.BigIntegerField(
        db_column='Cultural Immersion', blank=True, null=True)
    # Field name made lowercase.
    awareness = models.BigIntegerField(
        db_column='Awareness', blank=True, null=True)
    # Field name made lowercase.
    opera = models.BigIntegerField(db_column='Opera', blank=True, null=True)
    # Field name made lowercase.
    orchestra_strings = models.BigIntegerField(
        db_column='Orchestra_Strings', blank=True, null=True)
    # Field name made lowercase.
    vocal = models.BigIntegerField(db_column='Vocal', blank=True, null=True)
    # Field name made lowercase.
    musical = models.BigIntegerField(
        db_column='Musical', blank=True, null=True)
    # Field name made lowercase.
    classical = models.BigIntegerField(
        db_column='Classical', blank=True, null=True)
    # Field name made lowercase.
    recital = models.BigIntegerField(
        db_column='Recital', blank=True, null=True)
    # Field name made lowercase.
    lectures = models.BigIntegerField(
        db_column='Lectures', blank=True, null=True)
    # Field name made lowercase.
    broadway = models.BigIntegerField(
        db_column='Broadway', blank=True, null=True)
    # Field name made lowercase.
    poetry = models.BigIntegerField(db_column='Poetry', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    rock_and_roll = models.BigIntegerField(
        db_column='Rock and Roll', blank=True, null=True)
    # Field name made lowercase.
    blues = models.BigIntegerField(db_column='Blues', blank=True, null=True)
    # Field name made lowercase.
    pop = models.BigIntegerField(db_column='Pop', blank=True, null=True)
    # Field name made lowercase.
    choir = models.BigIntegerField(db_column='Choir', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    concert_band = models.BigIntegerField(
        db_column='Concert Band', blank=True, null=True)
    # Field name made lowercase.
    concert = models.BigIntegerField(
        db_column='Concert', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    music_festival = models.BigIntegerField(
        db_column='Music Festival', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    chamber_music = models.BigIntegerField(
        db_column='Chamber Music', blank=True, null=True)
    # Field name made lowercase.
    symphony = models.BigIntegerField(
        db_column='Symphony', blank=True, null=True)
    # Field name made lowercase.
    jazz = models.BigIntegerField(db_column='Jazz', blank=True, null=True)
    # Field name made lowercase.
    comedy = models.BigIntegerField(db_column='Comedy', blank=True, null=True)
    # Field name made lowercase.
    literature = models.BigIntegerField(
        db_column='Literature', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    history_museum = models.BigIntegerField(
        db_column='History Museum', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    historic_sites = models.BigIntegerField(
        db_column='Historic SItes', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    ancient_artifact_viewing = models.BigIntegerField(
        db_column='Ancient Artifact Viewing', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    story_telling = models.BigIntegerField(
        db_column='Story Telling', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    art_museum = models.BigIntegerField(
        db_column='Art Museum', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    sculpture_center = models.BigIntegerField(
        db_column='Sculpture Center', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    art_gallery = models.BigIntegerField(
        db_column='Art Gallery', blank=True, null=True)
    # Field name made lowercase.
    crafts = models.BigIntegerField(db_column='Crafts', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    limited_time_exhibit = models.BigIntegerField(
        db_column='Limited Time Exhibit', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    permanent_exhibit = models.BigIntegerField(
        db_column='Permanent Exhibit', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    multiple_artists = models.BigIntegerField(
        db_column='Multiple Artists', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    featured_solo = models.BigIntegerField(
        db_column='Featured Solo', blank=True, null=True)
    # Field name made lowercase.
    workshop = models.BigIntegerField(
        db_column='Workshop', blank=True, null=True)
    # Field name made lowercase.
    interactive = models.BigIntegerField(
        db_column='Interactive', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    award_winning_field = models.BigIntegerField(
        db_column='Award Winning ', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    labor_day = models.BigIntegerField(
        db_column='Labor Day', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    memorial_day_weekend = models.BigIntegerField(
        db_column='Memorial Day Weekend', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    july_fourth_weekend = models.BigIntegerField(
        db_column='July Fourth Weekend', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    mother_s_day = models.BigIntegerField(
        db_column="Mother's Day", blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    easter_weekend = models.BigIntegerField(
        db_column='Easter Weekend', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    spring_break = models.BigIntegerField(
        db_column='Spring Break', blank=True, null=True)
    # Field name made lowercase.
    easter = models.BigIntegerField(db_column='Easter', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    father_s_day = models.BigIntegerField(
        db_column="Father's Day", blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    mother_s_day_weekend = models.BigIntegerField(
        db_column="Mother's Day Weekend", blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    fall_break = models.BigIntegerField(
        db_column='Fall Break', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    race_signification_time_period = models.BigIntegerField(
        db_column='Race Signification Time Period', blank=True, null=True)
    # Field name made lowercase.
    modern = models.BigIntegerField(db_column='Modern', blank=True, null=True)
    # Field name made lowercase.
    cultural = models.BigIntegerField(
        db_column='Cultural', blank=True, null=True)
    # Field name made lowercase.
    dance = models.BigIntegerField(db_column='Dance', blank=True, null=True)
    # Field name made lowercase.
    contemporary = models.BigIntegerField(
        db_column='Contemporary', blank=True, null=True)
    # Field name made lowercase.
    abstract = models.BigIntegerField(
        db_column='Abstract', blank=True, null=True)
    # Field name made lowercase.
    theater = models.BigIntegerField(
        db_column='Theater', blank=True, null=True)
    # Field name made lowercase.
    arnoretums = models.BigIntegerField(
        db_column='Arnoretums', blank=True, null=True)
    # Field name made lowercase.
    aquariums = models.BigIntegerField(
        db_column='Aquariums', blank=True, null=True)
    # Field name made lowercase.
    technology = models.BigIntegerField(
        db_column='Technology', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    science_museum = models.BigIntegerField(
        db_column='Science Museum', blank=True, null=True)
    # Field name made lowercase.
    planetariums = models.BigIntegerField(
        db_column='Planetariums', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    film_screening = models.BigIntegerField(
        db_column='Film Screening', blank=True, null=True)
    # Field name made lowercase.
    galleries = models.BigIntegerField(
        db_column='Galleries', blank=True, null=True)
    # Field name made lowercase.
    asian = models.BigIntegerField(db_column='Asian', blank=True, null=True)
    # Field name made lowercase.
    indian = models.BigIntegerField(db_column='Indian', blank=True, null=True)
    # Field name made lowercase.
    russian = models.BigIntegerField(
        db_column='Russian', blank=True, null=True)
    # Field name made lowercase.
    european_dutch = models.BigIntegerField(
        db_column='European_Dutch', blank=True, null=True)
    # Field name made lowercase.
    european = models.BigIntegerField(
        db_column='European', blank=True, null=True)
    # Field name made lowercase.
    italian = models.BigIntegerField(
        db_column='Italian', blank=True, null=True)
    # Field name made lowercase.
    english = models.BigIntegerField(
        db_column='English', blank=True, null=True)
    # Field name made lowercase.
    german = models.BigIntegerField(db_column='German', blank=True, null=True)
    # Field name made lowercase.
    france = models.BigIntegerField(db_column='France', blank=True, null=True)
    # Field name made lowercase.
    african = models.BigIntegerField(
        db_column='African', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    middle_eastern = models.BigIntegerField(
        db_column='Middle Eastern', blank=True, null=True)
    # Field name made lowercase.
    american = models.BigIntegerField(
        db_column='American', blank=True, null=True)
    # Field name made lowercase.
    latino = models.BigIntegerField(db_column='Latino', blank=True, null=True)
    # Field name made lowercase.
    hispanic = models.BigIntegerField(
        db_column='Hispanic', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    native_american = models.BigIntegerField(
        db_column='Native American', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    african_american = models.BigIntegerField(
        db_column='African American', blank=True, null=True)
    # Field name made lowercase.
    women = models.BigIntegerField(db_column='Women', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    book_other_entertainment_adapted = models.BigIntegerField(
        db_column='Book / Other Entertainment Adapted', blank=True, null=True)
    # Field name made lowercase.
    jewish = models.BigIntegerField(db_column='Jewish', blank=True, null=True)
    # Field name made lowercase.
    politics = models.BigIntegerField(
        db_column='Politics', blank=True, null=True)
    # Field name made lowercase.
    texas = models.BigIntegerField(db_column='Texas', blank=True, null=True)
    # Field name made lowercase.
    black = models.BigIntegerField(db_column='Black', blank=True, null=True)
    # Field name made lowercase.
    struggle = models.BigIntegerField(
        db_column='Struggle', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    local_talent = models.BigIntegerField(
        db_column='Local Talent', blank=True, null=True)
    # Field name made lowercase.
    babies = models.BigIntegerField(db_column='Babies', blank=True, null=True)
    # Field name made lowercase.
    nature = models.BigIntegerField(db_column='Nature', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    ancient_history = models.BigIntegerField(
        db_column='Ancient History', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    kids_1 = models.BigIntegerField(db_column='Kids.1', blank=True, null=True)
    # Field name made lowercase.
    handicap = models.BigIntegerField(
        db_column='Handicap', blank=True, null=True)
    # Field name made lowercase.
    biblical = models.BigIntegerField(
        db_column='Biblical', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    other_entertainment_adapted = models.BigIntegerField(
        db_column='Other Entertainment Adapted', blank=True, null=True)
    # Field name made lowercase.
    multicultural = models.BigIntegerField(
        db_column='Multicultural', blank=True, null=True)
    # Field name made lowercase.
    lgbtq = models.BigIntegerField(db_column='LGBTQ', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    black_1 = models.BigIntegerField(
        db_column='Black.1', blank=True, null=True)
    # Field name made lowercase.
    islamic = models.BigIntegerField(
        db_column='Islamic', blank=True, null=True)
    # Field name made lowercase.
    space = models.BigIntegerField(db_column='Space', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    politics_1 = models.BigIntegerField(
        db_column='Politics.1', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'arts_event'


class ArtsNewUser(models.Model):
    # Field name made lowercase.
    new_user_id = models.BigIntegerField(
        db_column='New_User_ID', primary_key=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    genre_1 = models.TextField(db_column='Genre 1', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    genre_2 = models.TextField(db_column='Genre 2', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    genre_3 = models.TextField(db_column='Genre 3', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'arts_new_user'


class ArtsUser(models.Model):
    # Field name made lowercase.
    user_id = models.TextField(db_column='USER_ID', primary_key=True)
    # Field name made lowercase.
    email = models.TextField(db_column='Email', blank=True, null=True)
    # Field name made lowercase.
    password = models.TextField(db_column='Password', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'arts_user'


class ArtsUserInteraction(models.Model):
    # Field name made lowercase.
    index = models.BigIntegerField(db_column='Index', primary_key=True)
    # Field name made lowercase.
    user = models.ForeignKey(ArtsUser, models.DO_NOTHING,
                             db_column='User_ID', blank=True, null=True)
    # Field name made lowercase.
    event = models.ForeignKey(
        ArtsEvent, models.DO_NOTHING, db_column='Event_ID', blank=True, null=True)
    # Field name made lowercase.
    user_rating_non_numeric = models.TextField(
        db_column='User_Rating_Non_Numeric', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    user_rating = models.BigIntegerField(
        db_column='User Rating', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    event_genre = models.TextField(
        db_column='Event Genre', blank=True, null=True)
    # Field name made lowercase. Field renamed to remove unsuitable characters.
    event_subgenre = models.TextField(
        db_column='Event Subgenre', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'arts_user_interaction'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey(
        'DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
